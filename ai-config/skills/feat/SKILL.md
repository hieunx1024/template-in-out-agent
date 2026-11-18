---
name: feat
description: Triển khai tính năng mới hoặc thay đổi hành vi có chủ đích theo tiêu chí nghiệm thu.
---

## Đầu vào

Khi chỉ gọi tên skill hoặc yêu cầu xem mẫu, gửi mẫu dưới đây rồi chờ. Dùng yêu cầu, ticket hoặc phần đã chốt từ `idea` để bắt đầu.

```text
Mục tiêu — [Ai hoặc luồng nào cần làm được gì, để giải quyết việc gì]
Nghiệm thu — [Trong điều kiện nào, khi thao tác gì, kết quả nào phải quan sát được]
Ràng buộc — [Nếu có phạm vi loại trừ, quyền hoặc yêu cầu tương thích]
```

## Thực hiện

1. Xác định điểm tích hợp và gắn tiêu chí với ca kiểm tra. Kiểm tra quyền và trường hợp biên khi chúng ảnh hưởng đến nghiệm thu.
2. Triển khai trong phạm vi và kiểm tra qua điểm vào thực tế khi khả thi. Báo hành vi đã có và tiêu chí còn thiếu hoặc chưa xác minh.
