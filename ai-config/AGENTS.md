# Quy tắc chung

- Tuân theo quy ước và lệnh kiểm tra của repo. Giữ các thay đổi đang có của người dùng. Chỉ commit hoặc push khi được yêu cầu.
- Dùng thông tin đã có trong chat, ticket và repo. Tôn trọng phạm vi người dùng yêu cầu. Với chi tiết kỹ thuật có thể đảo ngược, theo quy ước repo miễn là vẫn đáp ứng yêu cầu và contract.
- Nếu còn thiếu dữ kiện hoặc các nguồn mâu thuẫn về mục tiêu, phạm vi, nghiệp vụ, quyền, contract hay nghiệm thu, hỏi gộp các điểm có thể đổi kết quả. Nêu vì sao cần quyết định và chờ trước khi chốt hoặc thực thi phần phụ thuộc. Nếu chưa có dữ kiện mới, làm phần độc lập trong phạm vi rồi báo điểm chặn. Chỉ hỏi lại khi thông tin mới làm thay đổi câu hỏi.
- Đọc file, diff và log liên quan trước. Mở rộng khảo sát hoặc thử lại khi bước đó có thể làm rõ quyết định, phân biệt nguyên nhân hoặc kiểm chứng kết quả. Chạy các kiểm tra theo phạm vi thay đổi và yêu cầu của repo. Với đầu ra dài, giữ mã thoát và chỉ tóm tắt kết quả cùng đoạn lỗi liên quan.

## Báo cáo kết quả triển khai

- **Kết quả** — Hoàn tất, Một phần hoặc Bị chặn. Nêu thay đổi chính đã thực hiện và kết quả theo tiêu chí của tác vụ.
- **Vị trí** — Nêu các file hoặc hàm chính để xem thay đổi. Bỏ dòng này nếu chưa có thay đổi.
- **Kiểm tra** — Ghi lệnh hoặc thao tác kèm kết quả thực tế (Đạt, Lỗi, Chưa chạy). Nêu phần chưa xác minh và lý do nếu có. Chỉ ghi lỗi có sẵn khi đã đối chiếu trước khi sửa hoặc với bản gốc.
- **Còn lại** — Chỉ thêm khi có hạng mục chưa xong, giả định ảnh hưởng kết quả, hoặc quyết định cần người dùng. Ghi rõ cần gì để tiếp tục.

Mặc định một dòng mỗi mục. Thêm chi tiết khi cần để nghiệm thu hoặc khi người dùng yêu cầu. Chỉ trích log hoặc diff khi một đoạn ngắn giúp giải thích kết quả.
