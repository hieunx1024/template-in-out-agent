# Bộ skill lập trình dùng chung

## 1. Cài đặt

Trên Ubuntu, cài Git và các agent bạn dùng. Clone repo rồi mở thư mục vừa tải.

```bash
git clone '<URL_REMOTE>' my-agent
cd my-agent
```

Thay `<URL_REMOTE>` bằng URL của repo. Nếu đã có repo trên máy, mở terminal tại thư mục chứa README này.

## 2. Tích hợp

Chạy đoạn dưới từ thư mục gốc của repo. Đoạn lệnh đăng ký ba skill và quy tắc chung ở cấp người dùng. Nếu gặp file hoặc thư mục cấu hình khác nội dung, lệnh báo đường dẫn để bạn kiểm tra trước khi tiếp tục.

```bash
bash <<'BASH'
set -eu

source_dir="$(pwd -P)/ai-config"
test -f "$source_dir/AGENTS.md"
for skill in feat bug refactor; do
  test -f "$source_dir/skills/$skill/SKILL.md"
done

link_config() {
  local source="$1" target="$2"
  mkdir -p -- "$(dirname -- "$target")"
  if [ -e "$target" ] || [ -L "$target" ]; then
    if [ -L "$target" ] && [ "$(realpath -- "$target")" = "$source" ]; then
      return 0
    fi
    printf 'Cấu hình đã tồn tại: %s\n' "$target" >&2
    return 1
  fi
  ln -sT -- "$source" "$target"
}

copy_config() {
  local source="$1" target="$2"
  mkdir -p -- "$(dirname -- "$target")"
  if [ -e "$target" ] || [ -L "$target" ]; then
    if [ -f "$target" ] && cmp -s -- "$source" "$target"; then
      return 0
    fi
    printf 'Cấu hình đã tồn tại: %s\n' "$target" >&2
    return 1
  fi
  cp -- "$source" "$target"
}

claude_dir="${CLAUDE_CONFIG_DIR:-$HOME/.claude}"
codex_dir="${CODEX_HOME:-$HOME/.codex}"
gemini_dir="$HOME/.gemini"

link_config "$source_dir" "$HOME/.ai-config"
link_config "$source_dir/AGENTS.md" "$claude_dir/CLAUDE.md"
link_config "$source_dir/AGENTS.md" "$codex_dir/AGENTS.md"
copy_config "$source_dir/AGENTS.md" "$gemini_dir/GEMINI.md"

for skill in feat bug refactor; do
  link_config "$source_dir/skills/$skill" "$claude_dir/skills/$skill"
  link_config "$source_dir/skills/$skill" "$HOME/.agents/skills/$skill"
  copy_config "$source_dir/skills/$skill/SKILL.md" "$gemini_dir/config/skills/$skill/SKILL.md"
done
BASH
```

Nếu đã có quy tắc cá nhân, gộp nội dung của [AGENTS.md](ai-config/AGENTS.md) vào file tương ứng rồi bỏ dòng cài file đó khi chạy lại khối Bash. Nếu Codex đang dùng `AGENTS.override.md` ở cấp người dùng, gộp quy tắc vào file đó. Nếu trùng tên skill, đối chiếu hai bản trước khi chọn nội dung dùng. Để cài cho một agent, giữ các hàm và chỉ chạy những dòng đăng ký của agent đó.

Sau khi cập nhật repo bằng `git pull`, Claude Code và Codex đọc bản mới qua symlink. Với Antigravity, đối chiếu rồi chép lại `ai-config/AGENTS.md` vào `~/.gemini/GEMINI.md` và từng `SKILL.md` vào thư mục skill tương ứng. Giữ các chỉnh sửa cá nhân nếu đã gộp cấu hình.

## 3. Sử dụng

Mở repo cần lập trình trong một phiên agent mới.

| Agent | Gọi mẫu sửa lỗi |
| --- | --- |
| Claude Code | Gửi `/bug`. |
| Codex CLI | Chọn `$bug` hoặc chọn `bug` từ `/skills`. |
| Codex desktop | Gõ `@`, chọn skill `bug` rồi gửi. |
| Antigravity IDE | Kiểm tra skill trong **Agent panel → Customizations** rồi gửi `Dùng skill bug và hiện mẫu đầu vào.` |

Đổi `bug` thành `feat` để tạo tính năng hoặc `refactor` để tái cấu trúc. Gọi tên skill để nhận mẫu, rồi điền ở tin nhắn kế tiếp. Nếu đã có đủ thông tin, gửi tên skill kèm yêu cầu trong cùng tin nhắn.

Ví dụ trong Claude Code:

```text
/bug
Hiện tượng — Trang đơn hàng trả 500 khi để trống ngày bắt đầu.
Mong đợi — Bỏ qua bộ lọc ngày bắt đầu.
Tái hiện — Mở trang đơn hàng, xóa ngày bắt đầu, bấm Tìm.
```

Agent hỏi lại khi thiếu dữ kiện ảnh hưởng đến quyết định triển khai. Khi hoàn tất, báo cáo gồm **Kết quả**, **Vị trí** và **Kiểm tra**, thêm **Còn lại** khi cần. Skill `bug` nêu nguyên nhân nghiệp vụ và kỹ thuật khi có bằng chứng.
