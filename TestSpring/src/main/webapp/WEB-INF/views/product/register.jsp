<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link href="/app/static/css/product/register.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<div class="main_d">
		<form enctype="multipart/form-data">
			<ul class="sc-iiUIRa">
				<li class="sc-hgRTRy1">
					<div class="sc-iIHSe1">상품이미지</div>
					<div class="sc-gldTML1">
						<ul class="sc-eInJlc">
							<li class="sc-gtfDJT">이미지 등록 <input class="input_file"
								type="file" name="file" accept="image/jpg, image/jpeg, image/png"
								multiple="multiple">
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
									class="sc-jKmXuR2" name="title" value=""> <a
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
								<textarea class="textarea" name="content"></textarea>
							</div>
						</div>
					</div>
				</li>
				<!-- ================================================================================= -->
			</ul>
			<button class="submit-btn">등록하기</button>
		</form>
	</div>
	<script type="text/javascript"
		src="/app/static/javascript/product/register.js"></script>
</body>
</html>