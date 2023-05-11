<template>
    <div>
        <!--ヘッダータイトル-->
        <header id="head">
            <div id="title">
                <h1 class="head_title">{{ test_name }}</h1>
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
            </ul>
        </div>
        <!-- ニュース（中央カラム） -->
        <div id="main">
            <div id="main_body">
                <!-- 主体部分 -->
                <div class="frame">
                    <div class="subtitle">
                        <div class="answer">
                            <span id="answer_title">{{ $t("test.answer_amout") }}</span>
                            <span id="answer_amount">{{ index }}</span>
                            <span id="question_amount">/{{ question_amount }}</span>
                        </div>
                        <div>{{ $t("test.time_title") }} {{ remaintime }}</div>
                    </div>
                    <div class="quest">

                        <div class="tigan">
                            <span id="question_title">{{ $t("test.question_title") }}</span>
                            <span id="question_series">{{ index }}</span>
                            <!-- 题目的信息 -->
                            <div>
                                &nbsp;
                                {{ content }}
                            </div>
                            <div v-if="code != ''">
                                <codemirror v-model="code" :options="cmOptions" />
                            </div>
                        </div>

                        <!-- 選択肢 -->
                        <div>
                            <div v-for="(o, i) in optionList_all" :key='i'>
                                <template v-if="o.question_id == index">
                                    <input type="checkbox" v-bind:id="i" />
                                    <label v-bind:for="i">
                                        {{ itemList[o.option_id - 1] }}
                                        :
                                        <input v-model="o.option_text" type="hidden">
                                        {{ o.option_text }}
                                    </label>
                                </template>

                            </div>
                        </div>

                    </div>
                    <br>

                    <div class="pagination">
                        <span v-if="this.index > 1">
                            <a href="#" id="previous_button" @click="question_pre">«</a>
                        </span>
                        <span v-if="this.index < this.question_amount">
                            <a href="#" id="next_button" @click="question_next">»</a>
                        </span>

                        <div>
                            <button class="btn_right button_back" @click="back()">{{ $t("test.back") }}</button>
                            &nbsp;
                            <button class="btn_right button_submit" @click="submit()">{{ $t("test.submit") }}</button>
                        </div>
                    </div>

                </div>


            </div>
        </div>
        <!-- フッタ -->
        <div id="footer">
            <address>Copyright © EL-PRO</address>
        </div>

    </div>

</template>


<script>
// 

import { codemirror } from 'vue-codemirror'
import 'codemirror/lib/codemirror.css'
import 'codemirror/mode/javascript/javascript.js'
import 'codemirror/theme/base16-dark.css'

export default {
    data() {
        return {
            remaintime: '', //倒计时
            seconds: 3600,
            test_id: "2",
            test_name: "",
            question_amount: 0,

            info: {},
            index: 1,
            content: "",
            question_text: "",
            code: "",
            opt: "",
            answer: {},

            redIndex: 0,
            itemList: ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L'],

            optionList_all: [],
            optionList: [],
            cmOptions: {
                tabSize: 4,
                mode: 'text/javascript',
                theme: 'base16-dark',
                lineNumbers: true,
                line: true,
            }


        }
    },
    created() {
    },

    mounted: function () {
        this.setLanguageData(),
            this.Time(), //调用定时器
            this.getExamDetail();
    },
    components: {
        codemirror
    },
    methods: {
        submit() {
            sessionStorage.setItem('test_id', 1)
            sessionStorage.setItem('bef_srceen_id', 'test')
            if (confirm(this.$t("test.showinfo2"))) {
                this.$router.push({
                    name: 'Score'
                });
            }

        },
        back() {
            if (confirm(this.$t("test.showinfo1"))) {
                this.$router.push({
                    name: 'Top'
                });
            }

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

        getExamDetail() {

            const url = this.$backendURL + '/examdetail/' + this.test_id;
            this.$axios.get(url)
                .then((response) => {
                    this.info = response.data;
                    this.test_name = this.info.examdetail.test_name;
                    this.question_amount = this.info.examdetail.questionlist.length;
                    this.content = response.data.examdetail.questionlist[0].question_text;
                    this.code = response.data.examdetail.questionlist[0].code;
                    this.optionList_all = response.data.examdetail.optionlist;

                    this.optionList_all.forEach(option => {
                        if (option.question_id == 1) {
                            this.optionList.push(option);
                        }
                    });

                })
                .catch((error) => {
                    this.$router.push({
                        name: 'Information',
                        params: { error }
                    })
                })

        },

        countDown() {
            // let h = parseInt(this.seconds / (60 * 60) % 24);
            // h = h < 10 ? "0" + h : h
            let m = parseInt(this.seconds / 60 % 60);
            m = m < 10 ? "0" + m : m
            let s = parseInt(this.seconds % 60);
            s = s < 10 ? "0" + s : s
            this.remaintime = m + ':' + s;
        },
        Time() {
            setInterval(() => {
                this.seconds -= 1
                this.countDown()
            }, 1000)
        },
        answer_amout() {
            sessionStorage.setItem('organizationId', this.postLoginData())
            this.$router.push({
                name: 'Answer Amount'
            })
        },
        time_title() {
            this.$router.push({
                name: 'Remaining time'
            })
        },

        question_next() {
            this.index += 1;
            this.content = this.info.examdetail.questionlist[this.index - 1].question_text;
            this.code = this.info.examdetail.questionlist[this.index - 1].code;
            this.optionlist = [];
            this.optionlist.splice(0);
            this.optionList_all.forEach(option => {
                if (option.question_id == (this.index)) {
                    this.optionList.push(option);
                }
            });
        },
        question_pre() {
            this.index -= 1;
            this.content = this.info.examdetail.questionlist[this.index - 1].question_text;
            this.code = this.info.examdetail.questionlist[this.index - 1].code;
            this.optionlist = [];
            this.optionlist.splice(0);
            this.optionList_all.forEach(option => {
                if (option.question_id == (this.index)) {
                    this.optionList.push(option);
                }
            });
        }

    }
}


</script>



<style scoped>
.subtitle {
    overflow: auto;
}

.answer {
    float: right;
}

.remaining_time {
    float: left;
}

#answer_title {
    width: 100px;
    height: 100px;

}

#answer_amount {
    width: 100px;
    height: 100px;

}

#question_amount {
    width: 100px;
    height: 100px;

}

.frame {
    padding: 64px;
    margin: auto;
    width: 1100px;
}

.quest {
    border: 1px solid black;
    padding: 20px;
    margin: auto;
    width: 1100px;
    height: 500px;
}

#question_text_css {
    border-radius: 25px;
    border: 2px solid #000000;
    padding: 20px;
    margin: auto;
    width: 50%;
    height: 500px;
}

.pagination {
    display: inline-block;
    width: 1100px;
}

.pagination a {
    color: black;
    float: left;
    padding: 8px 16px;
    text-decoration: none;
    transition: background-color .3s;
    border: 1px solid black;
    margin: 0 6px;
}

.pagination a:hover:not(.active) {
    background-color: rgba(133, 127, 127, 0.813);
}


.button_frame {
    display: inline-block;
    width: 800px;
}

.button_submit {
    margin-left: 20px;
}

.button_back {
    margin-left: 700px;
}


.back a:link {
    text-decoration: none;
}

.back a:visited {
    text-decoration: none;
}

.back a:hover {
    text-decoration: underline;
}

.back a:active {
    text-decoration: underline;
}

.submit1 {
    float: right;
}

.submit2 a:link,
a:visited {
    background-color: #0080FF;
    padding: 14px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
}

#footer {
    margin-left: 170px;
}
</style>