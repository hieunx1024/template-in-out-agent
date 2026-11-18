---
name: refactor
description: Đơn giản hóa cấu trúc mã trong phạm vi xác định và giữ hành vi hiện có.
---

## Đầu vào

Khi chỉ gọi tên skill hoặc yêu cầu xem mẫu, trả nguyên khối dưới đây rồi chờ. Mặc định giữ hành vi quan sát được và contract hiện có.

```text
Phạm vi — [Module, file, hàm hoặc luồng cần đổi]
Mục tiêu — [Vấn đề cấu trúc cần xử lý, như logic lặp hoặc phụ thuộc chéo]
Phải giữ — [Nếu có contract, mã lỗi, dữ liệu hoặc tác dụng phụ cần kiểm chứng]
```

## Thực hiện

1. Xác định caller và lấy kiểm tra hiện có làm mốc khi phù hợp. Bổ sung kiểm tra nếu contract dễ bị ảnh hưởng và còn thiếu bằng chứng.
2. Đổi theo bước nhỏ và kiểm tra lại luồng bị ảnh hưởng. Nếu cần đổi hành vi hoặc contract, xin quyết định trước. Báo phần được đơn giản hóa và hành vi đã kiểm chứng.
