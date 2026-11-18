#!/usr/bin/env bash
set -euo pipefail

agent=${1-all}
if [[ $# -gt 1 || ! $agent =~ ^(all|claude|codex|antigravity)$ ]]; then
  printf 'Cách dùng: bash install.sh [all|claude|codex|antigravity]\n' >&2
  exit 2
fi

source_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/ai-config" && pwd -P)
skills=(feat bug refactor)
required_files=(AGENTS.md)
for skill in "${skills[@]}"; do
  required_files+=("skills/$skill/SKILL.md")
done
for file in "${required_files[@]}"; do
  if [[ ! -f $source_dir/$file ]]; then
    printf 'Thiếu file nguồn: %s\n' "$source_dir/$file" >&2
    exit 1
  fi
done

conflicts=0

install_config() {
  local mode=$1 source=$2 target=$3
  if [[ -e $target || -L $target ]]; then
    if [[ $mode == link && -L $target && $(realpath -- "$target") == "$source" ]]; then
      return
    fi
    if [[ $mode == copy && -f $target ]] && cmp -s -- "$source" "$target"; then
      return
    fi
    printf 'Giữ nguyên cấu hình đang có: %s\n' "$target" >&2
    conflicts=$((conflicts + 1))
    return
  fi

  mkdir -p -- "$(dirname -- "$target")"
  if [[ $mode == link ]]; then
    ln -sT -- "$source" "$target"
  else
    cp -nT -- "$source" "$target"
  fi
}

if [[ $agent == all ]]; then
  install_config link "$source_dir" "$HOME/.ai-config"
fi

if [[ $agent == all || $agent == claude ]]; then
  claude_dir=${CLAUDE_CONFIG_DIR:-$HOME/.claude}
  install_config link "$source_dir/AGENTS.md" "$claude_dir/CLAUDE.md"
  for skill in "${skills[@]}"; do
    install_config link "$source_dir/skills/$skill" "$claude_dir/skills/$skill"
  done
fi

if [[ $agent == all || $agent == codex ]]; then
  codex_dir=${CODEX_HOME:-$HOME/.codex}
  install_config link "$source_dir/AGENTS.md" "$codex_dir/AGENTS.md"
  for skill in "${skills[@]}"; do
    install_config link "$source_dir/skills/$skill" "$HOME/.agents/skills/$skill"
  done
fi

if [[ $agent == all || $agent == antigravity ]]; then
  gemini_dir="$HOME/.gemini"
  install_config copy "$source_dir/AGENTS.md" "$gemini_dir/GEMINI.md"
  for skill in "${skills[@]}"; do
    install_config copy "$source_dir/skills/$skill/SKILL.md" "$gemini_dir/config/skills/$skill/SKILL.md"
  done
fi

if (( conflicts > 0 )); then
  printf 'Đã cài các mục còn thiếu. Kiểm tra %s mục cấu hình được liệt kê ở trên.\n' "$conflicts" >&2
  exit 1
fi
printf 'Đã cài quy tắc chung và các skill feat, bug, refactor.\n'
