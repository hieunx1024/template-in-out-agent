# Bộ skill lập trình dùng chung

## Cài đặt trên Ubuntu

Cần có Git và agent bạn muốn dùng.

**1. Tải repo.** Nếu đã tải repo, mở terminal trong thư mục chứa README này và chuyển sang bước 2.

```bash
git clone https://github.com/hieunx1024/template-in-out-agent.git my-agent
cd my-agent
```

**2. Chạy một lệnh cho agent bạn dùng.** Lệnh cài quy tắc chung và ba skill `feat`, `bug`, `refactor`.

| Agent | Lệnh cài |
| --- | --- |
| Claude Code | `bash install.sh claude` |
| Codex CLI hoặc desktop | `bash install.sh codex` |
| Antigravity IDE | `bash install.sh antigravity` |
| Cả ba | `bash install.sh all` |

**3. Mở phiên mới** trong repo bạn muốn làm việc rồi thử gọi skill `bug` theo hướng dẫn bên dưới.

### Nếu đã có cấu hình riêng

Script giữ nguyên các mục bị trùng và in đường dẫn của chúng. Các mục còn thiếu vẫn được cài. Với file quy tắc, bạn có thể gộp nội dung từ [AGENTS.md](ai-config/AGENTS.md) vào file đang dùng. Nếu Codex dùng `AGENTS.override.md`, gộp vào file đó. Với skill trùng tên, mở `SKILL.md` ở hai nơi để chọn nội dung cần giữ.

### Cập nhật

Chạy `git pull` trong repo này. Claude Code và Codex đọc nội dung mới qua liên kết đến repo, nên hãy giữ thư mục repo ở vị trí đã cài. Antigravity dùng bản sao. Sau khi cập nhật repo, đối chiếu `ai-config/AGENTS.md` với `~/.gemini/GEMINI.md` và các file `SKILL.md` tương ứng trong `~/.gemini/config/skills/` để gộp thay đổi.

## Sử dụng

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
