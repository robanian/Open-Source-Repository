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
		<a class="btn btn-primary mx-1 mt-2" data-toggle="modal" href="#registerModal">����ϱ�</a>
		</form>
	</section>
	<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
		<div class="modal-dialog"> <!-- modal-dialog�� �̿��� ���â���� �˷��ִ� �� -->
			<div class="modal-content">
				<div class="modal-header"> <!-- ���â ���� -->
					<h5 class="modal-title" id="modal">���� ���</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"> <!-- �ݱ� ��ư -->
						<span aria-hidden="true">&times;</span> <!-- �ݱ� ������ -->
					</button>
				</div>
				<div class="modal-body">
					<form action="./evaluationRegisterAction.jsp" method="post"> <!--jsp �������� post����� �̿��� ������-->
						<div class="form-row"> <!-- ����ڰ� �Է��� �� �ִ� ������ ���پ� ������ �����. row�� �ϳ��� ���� �������� ���� ���� �� ��� -->
							<div class="form-group col-sm-6">
								<label>���̵��</label>
								<input type="text" name="guideName" class="form-control" maxlength="20"> <!-- ���̵�� �ִ� 20�� -->
							</div>
							<div class="form-group col-sm-6">
								<label>��������</label>
								<input type="text" name="travelArea" class="form-control" maxlength="50">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-sm-4">
								<label>����</label>
								<select name="year" class="form-control">
									<option value="2020" selected>2020</option>
									<option value="2021">2021</option>
                           			<option value="2022">2022</option>
                           			<option value="2023">2023</option>
                           			<option value="2024">2024</option>
                           		</select>
                           	</div>
                           	<div class="form-group col-sm-4">
                           		<label>��</label>
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
                           		<label>��</label>
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
                           		<label>����</label>
                           		<input type="text" name="evaluationTitle" class="form-control" maxlength="30">
                           	</div>
                           	<div class="form-group">
                           		<label>����</label>
                           		<textarea name="evaluationContent" class="form-control" maxlength="2048" style="height: 180px;"></textarea>
                           	</div>
                           	<div class="form-group">
                           		<label>�����ֱ�</label>
                           		<select name="totalScore" class="form-control">
                           			<option value="�١١١١�" >�١١١١�</option>
                                	<option value="�ڡ١١١�" >�ڡ١١١�</option>
                                	<option value="�ڡڡ١١�" >�ڡڡ١١�</option>
                                	<option value="�ڡڡڡ١�" >�ڡڡڡ١�</option>
                                	<option value="�ڡڡڡڡ�" >�ڡڡڡڡ�</option>
                                	<option value="�ڡڡڡڡ�" >�ڡڡڡڡ�</option>
                                </select>
                           	</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">���</button>
							<button type="submit" class="btn btn-primary">����ϱ�</button>
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