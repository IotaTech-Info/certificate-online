............................<template>
    <div>
        <!--ヘッダータイトル-->
        <header id="head">
            <div id="title" class="head_title">
                <h1>{{ $t("register.title") }}</h1>
            </div>
        </header>
        <!-- サブメニュー（左カラム） -->
        <div id="submenu">
            <div id="logo">
                <img src="~@/assets/logo.png" alt="logo" class="logo">
            </div>
            <div id="header_set">
                <div id="company_name">
                    <p class="company_name">{{ $t("common.organizationName") }}</p>
                    <p class="company_name2">E-BUSINESS</p>
                </div>
                <!--言語ボタン■-->
                <div id="btn_language">
                    <template v-if="$i18n.locale === 'en'">
                        <a href="#" v-on:click.prevent="changeLanguage('ja')" class="btn_unselect">{{ $t("common.lanJa")
                        }}</a>
                        <a href="#" class="btn_select">{{ $t("common.lanEn") }}</a>
                    </template>
                    <template v-else>
                        <a href="#" class="btn_select">{{ $t("common.lanJa") }}</a>
                        <a href="#" v-on:click.prevent="changeLanguage('en')" class="btn_unselect">{{ $t("common.lanEn")
                        }}</a>
                    </template>
                </div>
            </div>
            <ul id=" submenu_body">
                <li class="btn_logout">
                    <a href="javascript:void(0);" @click="signOut()" class="btn_unselect">
                        <img src="~@/assets/logout.svg" alt="logout" class="icon">
                        {{ $t("common.signOut") }}
                    </a>
                </li>
            </ul>
        </div>
        <!-- ニュース（中央カラム） -->
        <div id="main">
            <div id="main_body">
                <div class="backGround">
                    <!-- <h1 class="theme"></h1> -->
                    <div class="information">
                        <!-- エラーメッセージ     -->
                        <div class="error">
                            <ui v-for="errorMessage in input_error_list" v-bind:key="errorMessage.text">
                                <li class="error_message">{{ errorMessage }}</li>
                            </ui>
                        </div>

                        <!-- ユーザ情報     -->
                        <div class="input_br">
                            <span class="starMark">*</span>{{ $t("register.username_title") }}
                            <div>
                                <input type="text" id="email" class="textInput" v-model="email_userid"
                                    placeholder="user@e-business.co.jp" required />
                            </div>
                        </div>
                        <div class="input_br">
                            <span class="starMark">*</span>{{ $t("register.password_title") }}
                            <div>
                                <input type="password" id="password_1" class="textInput" v-model="password"
                                    placeholder="******" />
                            </div>
                        </div>
                        <div class="input_br">
                            <span class="starMark">*</span>{{ $t("register.passwordrepeat_title") }}
                            <div>
                                <input type="password" id="password_2" class="textInput" v-model="password_again"
                                    placeholder="******" />
                            </div>
                        </div>
                        <div class="input_br">
                            <span class="starMark">*</span>{{ $t("register.name_title") }}
                            <div>
                                <input type="text" id="name" class="userName" v-model="lastname"
                                    :placeholder="$t('register.firstname')" />
                                <input type="text" id="name" class="userName" v-model="firstname"
                                    :placeholder="$t('register.lastname')" />
                            </div>
                        </div>
                        <div class="input_br">
                            <span class="starMark">*</span>{{ $t("register.birth_title") }}
                            <div>
                                <input type="text" class="textInput" id="birth" onfocus="this.type='date'"
                                    onfocusout="this.type='text'" placeholder="yyyy/mm/dd" v-model="birthday" />
                            </div>
                        </div>
                        <div class="input_br">
                            <div>
                                <span class="starMark">*</span>{{ $t("register.gender_title") }}
                            </div>
                            <span class="gender_space">
                                <input type="radio" id=gender0 v-model="sex" value="0" /><label for="gender0">{{
                                        $t("register.male_title")
                                }}</label>
                            </span>
                            <span class="gender_space">
                                <input type="radio" id=gender1 v-model="sex" value="1" /><label for="gender1">{{
                                        $t("register.female_title")
                                }}</label>
                            </span>
                        </div>
                        <div class="input_br">
                            <span class="starMark">*</span>{{ $t("register.address_title") }}
                            <div>
                                <input type="text" id="address" class="textInput" v-model="city"
                                    :placeholder="$t('register.address')" />
                            </div>
                        </div>
                        <div class="input_br">
                            {{ $t("register.company_title") }}
                            <div>
                                <input type="text" class="textInput" v-bind="formInput"
                                    :placeholder="$t('register.company')" />
                            </div>
                        </div>

                        <div class="button_br">
                            <!-- 提出ボタン -->
                            <button class="submitBtn" @click="submit()">
                            {{ $t("register.register") }}
                            </button>
                        </div>
                        <!-- ログイン画面へ -->
                        <div>
                            <router-link class="signInBtn" to="/">
                                {{ $t("register.login") }}
                            </router-link>
                        </div>

                    </div>
                </div>

                <!-- フッタ -->
                <div id="footer">
                    <address>Copyright © col-pro</address>
                </div>
            </div>

        </div>
    </div>
</template>

<script>
export default {

    data() {
        return {
            email_userid: '',
            password: '',
            password_again: '',
            lastname: '',
            firstname: '',
            birthday: '',
            sex: '',
            city: '',
            company: '',
            input_error_list: []
        }
    },


    mounted: function () {
        this.setLanguageData()
    },
    methods: {
        signOut() {
            sessionStorage.clear();
            this.$router.push({
                name: 'SignIn'
            });
        },
        setLanguageData() {
            // 画面遷移時にセッションから言語情報を取得する。
            // ない場合は英語とする
            var lang = sessionStorage.getItem('language')
            if (lang === null) {
                this.$i18n.locale = 'en';
            } else {
                this.$i18n.locale = lang;
            }
        },
        changeLanguage(lang) {
            sessionStorage.setItem('language', lang);
            this.$i18n.locale = lang;
        },

        submit() {

            if (this.inputCheck()) {
                return;
            }

            if (confirm(this.$t("confirm.create"))) {
                var data = {
                    mail: this.email_userid,
                    password: this.password,
                    lastname: this.lastname,
                    firstname: this.firstname,
                    birthday: this.birthday,
                    sex: this.sex,
                    company: this.company,
                    city: this.city
                }

                const url = this.$backendURL + '/userinfo';
                this.$axios.post(url, data)
                    .then((response) => {
                        this.userinfo = response.data.userinfo;
                        this.$router.push({
                            name: 'SignIn'
                        })
                    })
                    .catch((error) => {
                        if (error.response.data &&
                            error.response.data.code &&
                            error.response.data.message &&
                            error.response.data.code == 'USERINFOPOST400') {
                            this.input_error_list.push(error.response.data.message);
                        } else {
                            this.$router.push({
                                name: 'Information',
                                params: { error }
                            })
                        }

                    })
            }
        },
        inputCheck() {

            this.input_error_list = [];

            var t = /^[\w+-.]+@(\w+[-.])+\w{2,5}$/;

            // メール入力判断
            if (this.email_userid == '') {
                this.input_error_list.push('メールを入力してください。');
            } else if (!(t.test(this.email_userid))) {
                this.input_error_list.push('正しいメールを入力してください。');
            }

            // パスワード入力判断
            if (this.password == '') {
                this.input_error_list.push('パスワードを入力してください。');
            } else if (this.password.length < 6 || this.password.length > 60) {
                this.input_error_list.push('パスワードを6桁から60桁にしてください。');
            }
            // 二次パスワード入力判断
            if (this.password_again !== this.password) {
                this.input_error_list.push('パスワードは不一致です。');
            }
            // 名前入力判断
            if (this.lastname == '' || this.firstname == '') {
                this.input_error_list.push('名前を入力してください。');
            }
            // 生年月日入力判断
            if (this.birthday == "") {
                this.input_error_list.push('生年月日を入力してください。');
            }
            // 性别入力判断
            if (this.sex == "") {
                this.input_error_list.push('性别を入力してください。');
            }
            // 住所入力判断
            if (this.city == "") {
                this.input_error_list.push('住所を入力してください。');
            }

            // エラーありtrue エラーなしfalse
            if (this.input_error_list.length > 0) {
                return true;
            } else {
                return false;
            }
        }

    }
}
</script>

<style scoped>
/*エラーメッセージ*/
.theme {
    color: #55ffff;
    font-size: 50px;
    font-weight: 800;
    text-align: center;
}

.head_title {
    padding-left: 20px;
}

.information {
    font-size: 18px;
    font-weight: 500;
    text-align: center;
}

.gender_space {
    padding-left: 10px;
}

.input_br {
    padding-top: 10px;
}

.button_br {
    padding-top: 30px;
}

.starMark {
    color: red;
}

.textInput {
    width: 300px;
    height: 25px;
    text-align: center;
    border: none;
}

.userName {
    width: 142px;
    height: 25px;
    text-align: center
}

.submitBtn {
    font-size: 18px;
    /* width: 100px;
    height: 35px; */
    text-align: center;
    background-color: #3bb3e0;
    padding: 10px;
    position: relative;
    font-family: 'Open Sans', sans-serif;
    text-decoration: none;
    color: #fff;
    border: solid 1px #186f8f;
    box-shadow: inset 0px 1px 0px #7fd2f1, 0px 1px 0px #fff;
    border-radius: 5px;
}

.signInBtn {
    font-size: 14px;
    color: blue;
    border-style: none;
    text-align: center;
}

.backGround {
    height: 100%;
    width: 100%;
    background-size: cover;
}

.error {
    padding-top: 10px
}


::placeholder {
    color: #cdd;
}
</style>
