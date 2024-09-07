Life cycle : analysis - design - develop - test - deploy - maintain

Analysis
- Project definition : xác định dự án, bao gồm: vấn đề hiện tại, mục đích, hiện trạng, phạm vi (bao nhiêu người dùng, phòng ban nào, địa điểm nào, chức năng nào; đang dùng những component gì, tần suất ra sao, dự đoán trước những thứ ngoài dự án), kế hoạch, điểm thành công.
- Elicitation: dùng các kỹ thuật để moi móc thông tin và áp dụng vào các bước: prepare - conduct - document - confirm
- Analysis: 
	- Các bước: organize - functional decompose - prioritize -  validate - verify
		-  organize: tổ chức, sắp xếp lại các thông tin, requirement
		- functional decompose: phân rã các yêu cầu thành các yêu cầu nhỏ hơn -> chức năng
		- prioritize: phân chia các yêu cầu/ chức năng theo độ ưu tiên
		- validate & verify: xác nhận lại
- documentation: tài liệu hóa thành SRS/ FRD
- verification: chuyển cho QA/PM verify lại
- management: quản lí các thay đổi của tài liệu, đánh dấu các version khác nhau
 ![[Pasted image 20240906170707.png]]
Design
	Thiết kế DB
	Data Flow
	mockup, UX/UI (designer)
	business process flow
	bộ phân quyền
	solution architect (Technical Architect)
=> tài liệu thiết kế: SDD(Software Design Document) hoặc FDD (Functional Design Document).
Develop
- giải thích rõ hơn về mục đích usecase, làm việc với khách hàng để update lại những conflict
Test
- Internal testing (kiểm tra nội bộ)
	- Nếu là app phát triển thì QC gánh, còn app implement thì BA
	- Requirement Traceability Matrix (RTM): testcase map + requirement, giúp control được các requirement trong suốt dự án
- External testing 
	- User Acceptance Test: những buổi test của key-user dựa trên test case mà khách hàng tự viết hoặc đối tác viết
Deploy 
	- chuyển ứng dụng từ dev environment sang production envi...
	- migrate data
	- thiết lập người dùng
	- hướng dẫn sử dụng
	- bật audit hệ thống, batch job, ....go-live checklist (công việc, ai làm, ảnh hưởng, kết quả)
- BA cần chuẩn bị user manual  và training cho user
Maintain / Warranty