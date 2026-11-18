---
name: feat
description: Triển khai tính năng mới hoặc thay đổi hành vi theo tiêu chí nghiệm thu.
---

## Đầu vào

Khi chỉ gọi tên skill hoặc yêu cầu xem mẫu, trả nguyên khối dưới đây rồi chờ. Tiếp nhận yêu cầu tự nhiên hoặc ticket có đủ mục tiêu và tiêu chí.

```text
Mục tiêu — [Ai hoặc luồng nào cần làm được gì, để giải quyết việc gì]
Nghiệm thu — [Trong điều kiện nào, khi thao tác gì, kết quả nào phải quan sát được]
Ràng buộc — [Nếu có phạm vi loại trừ, quyền hoặc yêu cầu tương thích]
```

## Thực hiện

1. Xác định điểm tích hợp. Gắn tiêu chí với ca kiểm tra, gồm quyền hoặc trường hợp biên nếu ảnh hưởng nghiệm thu. Làm rõ thay đổi API, schema hoặc hành vi công khai nếu yêu cầu chưa quyết định.
2. Triển khai trong phạm vi và kiểm tra qua điểm vào thực tế khi khả thi. Báo hành vi đã có và tiêu chí còn thiếu hoặc chưa xác minh.
