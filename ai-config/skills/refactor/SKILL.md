---
name: refactor
description: Đơn giản hóa cấu trúc mã trong phạm vi xác định và giữ hành vi hiện có.
---

## Đầu vào

Khi chỉ gọi tên skill hoặc yêu cầu xem mẫu, gửi mẫu dưới đây rồi chờ.

```text
Phạm vi — [Module, file, hàm hoặc luồng cần đổi]
Mục tiêu — [Vấn đề cấu trúc cần xử lý, như logic lặp hoặc phụ thuộc chéo]
Phải giữ — [Nếu có contract, mã lỗi, dữ liệu hoặc tác dụng phụ cần kiểm chứng]
```

## Thực hiện

1. Xác định các caller và hành vi hiện tại của từng caller. Dùng kiểm tra sẵn có làm mốc. Bổ sung ca kiểm tra nếu contract dễ bị ảnh hưởng và còn thiếu bằng chứng.
2. Đổi theo bước nhỏ và kiểm tra lại luồng bị ảnh hưởng. Nếu cần đổi hành vi hoặc contract, xin quyết định trước. Báo phần được đơn giản hóa và hành vi đã kiểm chứng.
