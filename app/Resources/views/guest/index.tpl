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
                <label class="control-label" for="inputName">Ім'я <small>/ Name</small></label>
                <div class="controls">
                    <input type="text" name="name[]" id="inputName" class="form-control">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputLastname">Прізвище <small>/ Surname</small></label>
                <div class="controls">
                    <input type="text" name="lastname[]" id="inputLastname" class="form-control">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputJob">Посада <small>/ Job title</small></label>
                <div class="controls">
                    <input type="text" name="job[]" id="inputJob" class="form-control">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputEmail">Ел. пошта <small>/ E-mail</small></label>
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
            <div><a class="add">+ Додати гостя / Invite a guest</a></div>
            <div>
                <button type="submit" class="btn btn-lg btn-warning">Зберегти<small>Save</small></button>
            </div>
        </form>

        <p class="text-center">Якщо у Вас виникли питання або Вам потрібна допомога на реєстрацію церемонії нагородження, будь ласка, пишіть нам на електронну адресу: <a href="mailto:award@ancor.ua">award@ancor.ua</a></p>

        <p class="text-center eng">For any assistance in the registration or additional information about the Randstad Award, please, contact us via <a href="mailto:award@ancor.ua">award@ancor.ua</a>

        <div id="guest-template">
            <div class="guest-info">
                <h5>Гість <a class="remove">вилучити</a></h5>
                <div class="control-group">
                    <label class="control-label" for="inputName">Ім'я <small>/ Name</small></label>
                    <div class="controls">
                        <input type="text" name="name[]" id="inputName" class="form-control">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputLastname">Прізвище <small>/ Surname</small></label>
                    <div class="controls">
                        <input type="text" name="lastname[]" id="inputLastname" class="form-control">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputJob">Посада <small>/ Job title</small></label>
                    <div class="controls">
                        <input type="text" name="job[]" id="inputJob" class="form-control">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputEmail">Ел. пошта <small>/ E-mail</small></label>
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
