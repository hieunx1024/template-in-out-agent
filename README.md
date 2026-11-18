# Bộ skill lập trình dùng chung

## Cài đặt trên Ubuntu

Cần có Git và agent bạn muốn dùng.

**1. Tải repo.** Nếu đã tải repo, mở terminal trong thư mục chứa README này và chuyển sang bước 2.

```bash
git clone https://github.com/hieunx1024/template-in-out-agent.git my-agent
cd my-agent
```

**2. Chạy một lệnh cho agent bạn dùng.** Lệnh cài quy tắc chung và năm skill `feat`, `bug`, `refactor`, `idea`, `review`.

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

Chạy `git pull` trong repo này rồi chạy lại lệnh ở bước 2 để cài các skill mới. Claude Code và Codex đọc nội dung mới qua liên kết đến repo, nên hãy giữ thư mục repo ở vị trí đã cài. Antigravity dùng bản sao. Với các mục trùng được báo khi cài lại, đối chiếu `ai-config/AGENTS.md` với `~/.gemini/GEMINI.md` và các file `SKILL.md` tương ứng trong `~/.gemini/config/skills/` để gộp thay đổi.

## Sử dụng

| Agent | Gọi mẫu sửa lỗi |
| --- | --- |
| Claude Code | Gửi `/bug`. |
| Codex CLI | Chọn `$bug` hoặc chọn `bug` từ `/skills`. |
| Codex desktop | Gõ `@`, chọn skill `bug` rồi gửi. |
| Antigravity IDE | Kiểm tra skill trong **Agent panel → Customizations** rồi gửi `Dùng skill bug và hiện mẫu đầu vào.` |

Đổi `bug` thành tên skill phù hợp. Gọi tên skill để nhận mẫu, rồi điền ở tin nhắn kế tiếp. Nếu đã có ticket hoặc mô tả đủ rõ, gửi yêu cầu cùng lúc khi gọi skill.

### Workflow gợi ý

| Tình huống | Skill nên gọi | Đầu vào hữu ích |
| --- | --- | --- |
| Muốn cải thiện một luồng và cần chọn hướng | `idea` → `feat` khi đã chốt | Vấn đề thực tế. Khi chuyển sang `feat`, dùng lại mục tiêu, phạm vi và ví dụ nghiệm thu đã chốt trong chat. |
| Có ticket tính năng rõ tiêu chí | `feat` | Ticket, tiêu chí nghiệm thu và ràng buộc tương thích nếu có. |
| Hành vi đang sai | `bug` | Hiện tượng, kết quả mong đợi và bước tái hiện hoặc log nếu có. |
| Muốn đơn giản hóa code và giữ hành vi | `refactor` | File hoặc module cần đổi và hành vi cần giữ. |
| Có diff hoặc PR cần rà trước khi merge | `review` | Diff hoặc PR, nhánh gốc nếu cần so sánh và contract cần giữ. Agent báo phát hiện để bạn quyết định cách xử lý. |

Gọi `review` độc lập cho một PR sẵn có hoặc sau khi chạy `feat`, `bug` hay `refactor`. Ví dụ, gửi `Dùng review rà diff của nhánh hiện tại so với main, tập trung vào tương thích API và ca hồi quy còn thiếu`.

### Ví dụ sửa lỗi trong Claude Code

```text
/bug
Hiện tượng — Trang đơn hàng trả 500 khi để trống ngày bắt đầu.
Mong đợi — Bỏ qua bộ lọc ngày bắt đầu.
Tái hiện — Mở trang đơn hàng, xóa ngày bắt đầu, bấm Tìm.
```

Agent hỏi lại khi thiếu dữ kiện ảnh hưởng đến quyết định triển khai. Khi hoàn tất, báo cáo gồm **Kết quả**, **Vị trí** và **Kiểm tra**, thêm **Còn lại** khi cần. Skill `bug` nêu nguyên nhân nghiệp vụ và kỹ thuật khi có bằng chứng.
