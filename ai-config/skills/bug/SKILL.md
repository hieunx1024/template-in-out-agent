---
name: bug
description: Chẩn đoán và sửa lỗi khi hành vi hiện tại khác hành vi mong đợi.
---

## Đầu vào

Khi chỉ gọi tên skill hoặc yêu cầu xem mẫu, trả nguyên khối dưới đây rồi chờ. Dùng mô tả, ticket hoặc test đã có để bắt đầu chẩn đoán.

```text
Hiện tượng — [Kết quả thực tế hoặc lỗi, xảy ra ở đâu]
Mong đợi — [Kết quả đúng trong cùng điều kiện]
Tái hiện — [Nếu biết bước ngắn nhất, dữ liệu mẫu hoặc test đang lỗi]
Bối cảnh — [Nếu liên quan, ghi môi trường, phiên bản, tần suất hoặc đoạn log]
```

## Thực hiện

1. Tái hiện hoặc đối chiếu bằng chứng để khoanh vùng nguyên nhân. Nếu thiếu dữ liệu để chọn cách sửa, hỏi về bằng chứng có thể phân biệt các giả thuyết.
2. Khi khả thi, chạy ca hồi quy trước khi sửa để xác nhận nó lỗi đúng lý do. Sửa nguyên nhân, chạy lại ca đó và các kiểm tra liên quan.
3. Trong **Kết quả**, nêu ngắn hai góc độ khi có bằng chứng. **Nghiệp vụ** nêu quy tắc bị hiểu sai, bị bỏ sót hoặc bị vi phạm. **Kỹ thuật** nêu nhánh mã, cấu hình hoặc dữ liệu gây ra lỗi. Ghi rõ giả thuyết nếu chưa xác minh và bỏ góc độ không áp dụng.
