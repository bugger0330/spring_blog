<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../top/header.jsp"></jsp:include>
<link href="/app/static/css/product/register.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<div class="main_d">
		<form enctype="multipart/form-data">
		<input type="hidden" class="hidden-input" name="product_username">
		<input type="hidden" class="hidden-input2" name="product_phone">
			<ul class="sc-iiUIRa">
			
				<li class="sc-hgRTRy2">
					<div class="sc-iIHSe2">카테고리</div>
					<div class="sc-gldTML2">
						<div class="sc-ccSCjj">
							<div class="sc-feryYK">
								<select>
									<option value="스마트폰">스마트폰</option>
									<option value="태블릿">태블릿</option>
									<option value="PC">PC</option>
									<option value="기타">기타</option>
								</select>
							</div>
						</div>
					</div>
				</li>
			
				<li class="sc-hgRTRy1">
					<div class="sc-iIHSe1">상품이미지</div>
					<div class="sc-gldTML1">
						<ul class="sc-eInJlc">
							<li class="sc-gtfDJT">↓↓↓클릭하세요↓↓↓
							<input class="input_file" type="file" name="file" accept="image/jpg, image/jpeg, image/png"
								multiple="multiple">↑↑↑이미지 등록↑↑↑
							</li>
						</ul>
						<div class="sc-hzDEsm">
							<span class="sc_span2">* 상품 이미지는 640x640에 최적화 되어 있습니다.</span> <br>-
							상품 이미지는 PC에서는 1:1, 모바일에서는 1:1.23 비율로 보여집니다. <br>- 이미지는 상품 등록
							시 정사각형으로 잘려서 등록됩니다. <br>- 이미지를 클릭할 경우 원본 이미지를 확인할 수 있습니다.<br>-
							이미지를 클릭 후 이동하여 등록순서를 변경할 수 있습니다. <br>- 큰 이미지일 경우 이미지가 깨지는
							경우가 발생할 수 있습니다. <br>최대 지원 사이즈인 640 X 640으로 리사이즈 해서 올려주세요.(개당
							이미지 최대 10M)
						</div>
					</div>
				</li>

				<!-- ================================================================================= -->
				<li class="sc-hgRTRy2">
					<div class="sc-iIHSe2">제목</div>
					<div class="sc-gldTML2">
						<div class="sc-ccSCjj">
							<div class="sc-feryYK">
								<input type="text" placeholder="상품 제목을 입력해주세요."
									class="sc-jKmXuR2" name="product_title" value=""> <a
									href="https://help.bunjang.co.kr/faq/2/220" class="black_x"
									target="_blank">거래금지 품목</a>
							</div>
						</div>
					</div>
				</li>
				<!-- ================================================================================= -->
				<li class="sc-hgRTRy2">
					<div class="sc-iIHSe2">내용</div>
					<div class="sc-gldTML2">
						<div class="sc-ccSCjj">
							<div class="sc-feryYK">
								<textarea class="textarea" name="product_content"></textarea>
							</div>
						</div>
					</div>
				</li>
				<!-- ================================================================================= -->
				<li class="sc-hgRTRy2">
					<div class="sc-iIHSe2">판매가격</div>
					<div class="sc-gldTML2">
						<div class="sc-ccSCjj">
							<div class="sc-feryYK">
								<input type="text" placeholder="숫자만 입력하세요!"
									class="sc-jKmXuR2" name="product_price" value="">
							</div>
						</div>
					</div>
				</li>
				<li class="sc-hgRTRy2">
					<div class="sc-iIHSe2">결제 방법</div>
					<div class="sc-gldTML2">
						<div class="sc-ccSCjj">
							<div class="sc-feryYK">
								<select>
									<option value="택배거래">택배거래</option>
									<option value="직거래">직거래</option>
								</select>
							</div>
						</div>
					</div>
				</li>
				<li class="sc-hgRTRy2">
					<div class="sc-iIHSe2">제품 상태</div>
					<div class="sc-gldTML2">
						<div class="sc-ccSCjj">
							<div class="sc-feryYK">
								<select>
									<option value="새 상품">새 상품</option>
									<option value="중고 상품">중고 상품</option>
								</select>
							</div>
						</div>
					</div>
				</li>
				<li class="sc-hgRTRy2">
					<div class="sc-iIHSe2">교환/환불</div>
					<div class="sc-gldTML2">
						<div class="sc-ccSCjj">
							<div class="sc-feryYK">
								<select>
									<option value="불가">불가</option>
									<option value="가능">가능</option>
								</select>
							</div>
						</div>
					</div>
				</li>
			</ul>
			<button type="button" class="submit-btn">등록하기</button>
		</form>
	</div>
	<script type="text/javascript"
		src="/app/static/javascript/product/register.js"></script>
<jsp:include page="../top/footer.jsp"></jsp:include>