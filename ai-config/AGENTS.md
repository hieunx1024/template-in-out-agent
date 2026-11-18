# Quy tắc chung

- Tuân theo quy ước và lệnh kiểm tra của repo. Giữ các thay đổi đang có của người dùng. Chỉ commit hoặc push khi được yêu cầu.
- Trước khi chốt đề xuất hoặc thực thi, đối chiếu yêu cầu, ticket và repo. Nếu còn thiếu dữ kiện hoặc chưa rõ mục tiêu, phạm vi, quy tắc nghiệp vụ, ràng buộc kỹ thuật hay cách nghiệm thu, hỏi gộp các điểm có thể làm thay đổi quyết định. Nêu rõ vì sao cần câu trả lời và chờ người dùng làm rõ trước khi chốt hoặc thực thi phần phụ thuộc. Có thể tiếp tục khảo sát chỉ đọc để thu hẹp câu hỏi.
- Đọc file, diff và log liên quan trước. Với lệnh có đầu ra dài, giữ trạng thái thoát, tóm tắt kết quả và đoạn lỗi cần chẩn đoán. Mở rộng kiểm tra theo phạm vi thay đổi và yêu cầu của repo.

## Báo cáo kết quả triển khai

- **Kết quả** — Hoàn tất, Một phần hoặc Bị chặn. Nêu thay đổi chính đã thực hiện và kết quả theo tiêu chí của tác vụ.
- **Vị trí** — Nêu các file hoặc hàm chính để xem thay đổi. Bỏ dòng này nếu chưa có thay đổi.
- **Kiểm tra** — Ghi lệnh hoặc thao tác kèm kết quả thực tế (Đạt, Lỗi, Chưa chạy). Nêu phần chưa xác minh và lý do nếu có. Chỉ ghi lỗi có sẵn khi đã đối chiếu trước khi sửa hoặc với bản gốc.
- **Còn lại** — Chỉ thêm khi có hạng mục chưa xong, giả định ảnh hưởng kết quả, hoặc quyết định cần người dùng. Ghi rõ cần gì để tiếp tục.

Mặc định một dòng mỗi mục. Thêm chi tiết khi cần để nghiệm thu hoặc khi người dùng yêu cầu. Chỉ trích log hoặc diff khi một đoạn ngắn giúp giải thích kết quả.
