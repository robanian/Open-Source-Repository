<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<section class="container">
		<a class="btn btn-primary mx-1 mt-2" data-toggle="modal" href="#registerModal">등록하기</a>
		</form>
	</section>
	<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
		<div class="modal-dialog"> <!-- modal-dialog를 이용해 모달창임을 알려주는 것 -->
			<div class="modal-content">
				<div class="modal-header"> <!-- 모달창 제목 -->
					<h5 class="modal-title" id="modal">리뷰 등록</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"> <!-- 닫기 버튼 -->
						<span aria-hidden="true">&times;</span> <!-- 닫기 아이콘 -->
					</button>
				</div>
				<div class="modal-body">
					<form action="./evaluationRegisterAction.jsp" method="post"> <!--jsp 페이지로 post방식을 이용해 보낸다-->
						<div class="form-row"> <!-- 사용자가 입력할 수 있는 내용을 한줄씩 들어가도록 만든다. row는 하나의 행을 여러개의 열로 나눌 때 사용 -->
							<div class="form-group col-sm-6">
								<label>가이드명</label>
								<input type="text" name="guideName" class="form-control" maxlength="20"> <!-- 가이드명 최대 20자 -->
							</div>
							<div class="form-group col-sm-6">
								<label>여행지역</label>
								<input type="text" name="travelArea" class="form-control" maxlength="50">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-4">
								<label>연도</label>
								<select name="year" class="form-control">
									<option value="2020" selected>2020</option>
									<option value="2021">2021</option>
                           			<option value="2022">2022</option>
                           			<option value="2023">2023</option>
                           			<option value="2024">2024</option>
                           		</select>
                           	</div>
                           	<div class="form-group col-sm-4">
                           		<label>월</label>
                           		<select name="month" class="form-control">
                           			<option value="1">1</option>
                            		<option value="2">2</option>
                            		<option value="3">3</option>
                            		<option value="4">4</option>
                            		<option value="5">5</option>
                            		<option value="6">6</option>
                            		<option value="7">7</option>
                            		<option value="8">8</option>
                            		<option value="9">9</option>
                            		<option value="10">10</option>
                            		<option value="11">11</option>
                            		<option value="12">12</option>
                            	</select>
                           	</div>
                           	<div class="form-group col-sm-4">
                           		<label>일</label>
                           		<select name="day" class="form-control">
                           			<option value="1">1</option>
                            		<option value="2">2</option>
                            		<option value="3">3</option>
                            		<option value="4">4</option>
                            		<option value="5">5</option>
                            		<option value="6">6</option>
                            		<option value="7">7</option>
                            		<option value="8">8</option>
                            		<option value="9">9</option>
                            		<option value="10">10</option>
                            		<option value="11">11</option>
                            		<option value="12">12</option>
                            		<option value="13">13</option>
                            		<option value="14">14</option>
                            		<option value="15">15</option>
                            		<option value="16">16</option>
                            		<option value="17">17</option>
                            		<option value="18">18</option>
                            		<option value="19">19</option>
                            		<option value="20">20</option>
                            		<option value="21">21</option>
                            		<option value="22">22</option>
                            		<option value="23">23</option>
                            		<option value="24">24</option>
                            		<option value="25">25</option>
                            		<option value="26">26</option>
                            		<option value="27">27</option>
                            		<option value="28">28</option>
                            		<option value="29">29</option>
                            		<option value="30">30</option>
                            		<option value="31">31</option>
                            	</select>
                           	</div>
                           	<div class="form-group">
                           		<label>제목</label>
                           		<input type="text" name="evaluationTitle" class="form-control" maxlength="30">
                           	</div>
                           	<div class="form-group">
                           		<label>내용</label>
                           		<textarea name="evaluationContent" class="form-control" maxlength="2048" style="height: 180px;"></textarea>
                           	</div>
                           	<div class="form-group">
                           		<label>별점주기</label>
                           		<select name="totalScore" class="form-control">
                           			<option value="☆☆☆☆☆" >☆☆☆☆☆</option>
                                	<option value="★☆☆☆☆" >★☆☆☆☆</option>
                                	<option value="★★☆☆☆" >★★☆☆☆</option>
                                	<option value="★★★☆☆" >★★★☆☆</option>
                                	<option value="★★★★☆" >★★★★☆</option>
                                	<option value="★★★★★" >★★★★★</option>
                                </select>
                           	</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
							<button type="submit" class="btn btn-primary">등록하기</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<script src="js/jquery.min.js"></script>
	<script src="js/pooper.js"></script>
	<script src="js/bootstrap.min.js"></script>

</body>
</html>