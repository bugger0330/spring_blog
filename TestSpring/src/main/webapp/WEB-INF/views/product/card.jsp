<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
	<link href="/app/static/css/product/card.css" rel="stylesheet">
</head>

<body>

    <div class="modal">
        <div class="modal__container">
            <div class="modal__featured">

                <div class="modal__circle"></div>

            </div>
            <div class="modal__content">
                <h2>결제정보</h2><br>

                <form>
                    <ul class="form-list">
                        <li class="form-list__row">
                            <label>이름</label>
                            <input type="text" name="a1" required="" />
                        </li>
                        <li class="form-list__row">
                            <label>카드번호</label>
                            <div id="input--cc" class="creditcard-icon">
                                <input type="text" name="a2" required="" />
                            </div>
                        </li>
                        <li class="form-list__row form-list__row--inline">
                            <div>
                                <label>카드 월/년</label>
                                <div class="form-list__input-inline">
                                    <input type="text" name="cc_month" placeholder="MM" pattern="\\d*" minlength="2"
                                        maxlength="2" required="" />
                                    <input type="text" name="cc_year" placeholder="YY" pattern="\\d*" minlength="2"
                                        maxlength="2" required="" />
                                </div>
                            </div>
                            <div>
                                <label>
                                    CVC


                                </label>
                                <input type="text" name="a5" placeholder="123" pattern="\\d*" minlength="3"
                                    maxlength="4" required="" />
                            </div>
                        </li>
                        <li class="form-list__row form-list__row--agree">
                            <label>
                                <input type="checkbox" name="save_cc" checked="checked">
                                설정을 저장하시겠습니까?
                            </label>
                        </li>
                        <li>

                            <button type="button" id="card">
                                <a class="btn_a" href="#">결제하기</a>
                            </button>
                            <button type="button" id="close">
                                <a class="btn_a" href="#">취소하기</a>
                            </button>
                        </li>
                    </ul>
                </form>
            </div> <!-- END: .modal__content -->
        </div> <!-- END: .modal__container -->
    </div> <!-- END: .modal -->
</body>

</html>