
<template>
    <div>
        <!--ヘッダータイトル-->
        <header id="head">
            <div id="title">
                <h1 class="head_title">{{ $t("score.title") }}</h1>
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
                    <p class="company_name">{{ $t("common.userName") }}</p>
                    <p class="company_name2">テスト 花子</p>
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
                <div id="container">
                    <!-- <h1 id="message"></h1> -->
                    <div class="frame">
                        <template v-if="resultDisplay_flag">
                            <h1 v-if="score >= 60">{{ $t("score.message_passed") }}</h1>
                            <h1 v-else-if="score >= 0">{{ $t("score.message_failed") }}</h1>
                        </template>
                        <h1 v-else>{{ $t("score.message_space") }}</h1>

                        <div class="result">
                            <br />
                            <div class="name">
                                <span id="space">{{ $t("score.message_space") }}</span>
                                <span id="user_name">{{ user_name }}</span>
                                <!-- <span id="honorific">{{ $t("score.honorific") }}</span> -->
                            </div>
                            <div class="date">
                                <span id="time" v-if="$i18n.locale === 'en'">{{ today_date }}</span>
                                <span id="time" v-else>{{ today_date_JP }}</span>
                            </div>
                            <br /><br />
                            <h3 id="test_name">{{ test_name }}</h3>
                            <br />
                            <h2 id="test_status" v-if="score >= 60">{{ $t("score.test_status_passed") }}</h2>
                            <h2 id="test_status" v-else-if="score >= 0">{{ $t("score.test_status_failed") }}</h2>
                            <br />

                            <div class="detail">
                                <div>
                                    <span id="point_title">{{ $t("score.point_title") }}</span>
                                    <br /><br />
                                    <h1 id="point_value">{{ score }}</h1>
                                </div>
                                <br><br>
                            </div>

                        </div>
                    </div>
                    <div class="button_frame">
                        <button class="button" @click="confirm()">{{ $t("score.submit") }}</button>
                    </div>
                </div>

                <!-- フッタ -->
                <div id="footer">
                    <address>Copyright © EL-PRO</address>
                </div>
            </div>

        </div>
    </div>
</template>



<script>
export default {
    data() {
        return {
            user_id: "1",
            test_id: "1",
            score: -1,
            test_name: "Loading TestName...",
            today_date: new Date().getFullYear() + "-" + (new Date().getMonth() + 1) + "-" + new Date().getDate() + "　",
            today_date_JP: "令和" + (new Date().getFullYear() - 2018) + "年（" + new Date().getFullYear() + "年）" + (new Date().getMonth() + 1) + "月" + new Date().getDate() + "日　",
            user_name: '',
            bef_srceen_id: '',
            resultDisplay_flag: false
        }
    },
    mounted: function () {
        this.setLanguageData();
        this.user_name = sessionStorage.getItem('user_name');
        var tempUserId = sessionStorage.getItem('user_id');
        if (tempUserId) {
            this.user_id = tempUserId
        }
        var tempTestId = sessionStorage.getItem('test_id');
        if (tempTestId) {
            this.test_id = tempTestId
        }
        // this.test_id = sessionStorage.getItem('test_id');
        // this.user_id = sessionStorage.getItem('user_id');
        this.bef_srceen_id = sessionStorage.getItem('bef_srceen_id');
        if (this.bef_srceen_id == 'test') {
            this.resultDisplay_flag = true;
        }
        this.getExamResultInfo();

    },
    methods: {
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
        getExamResultInfo() {

            const url = this.$backendURL + '/answer/' + this.user_id + '/' + this.test_id;
            this.$axios.get(url)
                .then((response) => {
                    this.score = response.data.answerdetail.test_result;
                    this.test_name = response.data.answerdetail.test_name;
                })
                .catch((error) => {
                    this.$router.push({
                        name: 'Information',
                        params: { error }
                    })
                })

        },
        signOut() {
            sessionStorage.clear();
            this.$router.push({
                name: 'SignIn'
            });
        },
        confirm() {
            this.$router.push({
                name: 'Top'
            });
        },
    }
}
</script>

<style>
#container {
    margin: auto;
    height: 500px;
}

.frame {
    width: 720px;
    height: 420px;
}

.button_frame {
    margin: auto;
    width: 140px;
}

.result {
    border: 3px solid black;
    text-align: center;
    height: 361px;
}

.name {
    float: left;
}

.date {
    float: right;
}

h1 {
    text-align: center;
}

.button {
    background-color: #0080FF;
    border: none;
    color: white;
    width: 135px;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 20px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 15px;

}
</style>
