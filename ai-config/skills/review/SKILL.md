---
name: review
description: Rà diff, commit hoặc pull request để phát hiện lỗi nghiệp vụ, thay đổi contract và rủi ro hồi quy.
---

## Đầu vào

Khi chỉ gọi tên skill hoặc yêu cầu xem mẫu, gửi mẫu dưới đây rồi chờ. Dùng phạm vi, ticket và tiêu chí đã có trong chat nếu đủ để bắt đầu.

```text
Phạm vi — [Diff đang làm, commit hoặc nhánh so với mốc nào, hay pull request]
Kỳ vọng — [Nếu có ticket, tiêu chí nghiệm thu hoặc contract cần giữ]
```

## Thực hiện

1. Đọc diff theo phạm vi đã xác định và đối chiếu hành vi trước và sau thay đổi. Đọc caller, kiểm tra sẵn có và tiêu chí liên quan khi cần làm rõ tác động.
2. Ưu tiên lỗi nghiệp vụ, tương thích với caller hoặc dữ liệu cũ, đường lỗi và ca kiểm tra còn thiếu có thể bỏ lọt một hồi quy cụ thể.
3. Sắp phát hiện theo mức ảnh hưởng. Với mỗi phát hiện, ghi file và dòng, điều kiện xảy ra, hậu quả và bằng chứng từ diff hoặc luồng liên quan. Nếu chưa thấy vấn đề đáng báo, nói rõ phạm vi đã rà và phần chưa kiểm chứng nếu có.

Giữ nguyên mã nguồn và dừng sau khi báo kết quả rà soát.
