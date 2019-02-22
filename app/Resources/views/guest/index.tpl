<div class="row">
    <div class="col-xs-12 col-md-8 col-lg-6 col-xs-offset-0 col-md-offset-2 col-lg-offset-3">
        <form class="form-horizontal register" method="post">
            <div class="control-group">
                <label class="control-label" for="inputCompany">Компания <small>/ Company</small></label>
                <div class="controls">
                    <input type="text" name="company" id="inputCompany" class="form-control">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputName">Имя <small>/ Name</small></label>
                <div class="controls">
                    <input type="text" name="name[]" id="inputName" class="form-control">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputLastname">Фамилия <small>/ Surname</small></label>
                <div class="controls">
                    <input type="text" name="lastname[]" id="inputLastname" class="form-control">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputJob">Должность <small>/ Job title</small></label>
                <div class="controls">
                    <input type="text" name="job[]" id="inputJob" class="form-control">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputEmail">Эл. почта <small>/ E-mail</small></label>
                <div class="controls">
                    <input type="text" name="email[]" id="inputEmail" class="form-control">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputPhone">Телефон <small>/ Phone</small></label>
                <div class="controls">
                    <input type="text" name="phone[]" id="inputPhone" class="form-control">
                </div>
            </div>
            <div id="guests">

            </div>
            <div><a class="add">+ Добавить гостя / Invite a guest</a></div>
            <div>
                <button type="submit" class="btn btn-lg btn-warning">Сохранить<small>Save</small></button>
            </div>
        </form>

        <p class="text-center">Если у Вас есть вопросы или Вам требуется помощь с регистрацией на церемонию вручения премии, пожалуйста, пишите нам на электронный адрес <a href="mailto:award@ancor.ru">award@ancor.ru</a></p>

        <p class="text-center eng">For any assistance in the registration or additional information about the Randstad Award, please, contact us via  <a href="mailto:award@ancor.ru">award@ancor.ru</a>

        <div id="guest-template">
            <div class="guest-info">
                <h5>Гость <a class="remove">удалить</a></h5>
                <div class="control-group">
                    <label class="control-label" for="inputName">Имя <small>/ Name</small></label>
                    <div class="controls">
                        <input type="text" name="name[]" id="inputName" class="form-control">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputLastname">Фамилия <small>/ Surname</small></label>
                    <div class="controls">
                        <input type="text" name="lastname[]" id="inputLastname" class="form-control">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputJob">Должность <small>/ Job title</small></label>
                    <div class="controls">
                        <input type="text" name="job[]" id="inputJob" class="form-control">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputEmail">Эл. почта <small>/ E-mail</small></label>
                    <div class="controls">
                        <input type="text" name="email[]" id="inputEmail" class="form-control">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputPhone">Телефон <small>/ Phone</small></label>
                    <div class="controls">
                        <input type="text" name="phone[]" id="inputPhone" class="form-control">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
