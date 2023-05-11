<template>
    <div>
        <!--ヘッダータイトル-->
        <header id="head">
            <div id="title">
                <h1 class="head_title">EL-PRO</h1>
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
                <div class="layout">
                    <h1 class="page-title">{{ $t("top.title") }}</h1>
                    <VueGoodTable ref="examlistTable" styleClass="vgt-table" 
                        :columns="columns" 
                        :rows="examlist"                     
                        :pagination-options="{
                            enabled: true,
                            perPage:5,
                            prevLabel: $t('top.page-pre'),
                            nextLabel: $t('top.page-next'),
                            rowsPerPageLabel: $t('top.page-per'),
                        }
                        ">
                        <template slot="table-row" slot-scope="props">
                            <span v-if="props.column.field == 'test_status'">
                                <span v-if="props.row.test_status == 0">
                                    <button class="test-status test-status-waiting" @click="test(props.row.test_id)">
                                            {{$t("top.status-waiting")}}
                                    </button>
                                </span>
                                <span v-else-if="props.row.test_status == 1">
                                    <button class="test-status test-status-success" @click="result(props.row.test_id)">
                                        {{ $t("top.status-success") }}
                                    </button>
                                </span>
                                <span v-else>
                                    <button class="test-status test-status-failure" @click="test(props.row.test_id)">
                                            {{$t("top.status-failure")}}
                                    </button>
                                </span>
                            </span>
                        </template>
                    </VueGoodTable>
                </div>

                <div class="layout">

                    <!-- <div class="dropdown">
                        <span>ユーザーの名前</span>
                        <div class="dropdown-content">
                            <span @click="profile()">プロファイル</span>
                            <span @click="password()">パスワード変更</span>
                            <span @click="signout()">サインアウト</span>
                        </div>
                    </div> -->




                    <!-- <table>
                        <tr>
                            <td>
                                <span>Java SE Bronze</span>
                                <span>🌸</span>
                            </td>
                            <td>
                                <button class="test-status test-status-success" @click="result()">{{
                                        $t("top.status-success")
                                }}</button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span>Java SE Silver</span>
                            </td>
                            <td>
                                <button class="test-status test-status-waiting" @click="test()">{{
                                        $t("top.status-waiting")
                                }}</button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span>Java SE Gold</span>
                            </td>
                            <td>
                                <button class="test-status test-status-failure" @click="test()">{{
                                        $t("top.status-failure")
                                }}</button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span>基本情報技術者</span>
                                <span>🌸</span>
                            </td>
                            <td>
                                <button class="test-status test-status-success" @click="result()">{{
                                        $t("top.status-success")
                                }}</button>
                            </td>
                        </tr>

                    </table>

                    <div>
                        <button class="page-button">{{ $t("top.page-pre") }}</button>
                        <button class="page-button">{{ $t("top.page-next") }}</button>
                    </div> -->

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
import 'vue-good-table/dist/vue-good-table.css';
import { VueGoodTable } from 'vue-good-table';


export default {
    data() {
        return {
            user_id: "1",
            examlist: [],
        }
    },
    computed: {
        columns() {
            return [
                {
                    label: this.$t("top.test-category"),
                    field: "test_category",
                    width: "30%",
                },
                {
                    label: this.$t("top.test-name"),
                    field: "test_name",
                    width: "40%",
                },
                {
                    label: this.$t("top.test-status"),
                    field: "test_status",
                    width: "30%",
                },
            ]
        }
    },
    components: {
        VueGoodTable,
    },
    mounted: function () {
        this.setLanguageData();
        this.getExamList();
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
        getExamList() {

            const url = this.$backendURL + '/examlist';
            this.$axios.get(url)
                .then((response) => {
                    this.examlist = response.data.examlist;
                    this.examlist.forEach(async (e, index) => {
                        var score = await this.getExamResult(e.test_id);
                        this.$set(this.examlist[index], "test_status", score < 60 ? -1 : 1);
                    });
                }
                )
                .catch((error) => {
                    this.$router.push({
                        name: 'Information',
                        params: { error }
                    })
                })

        },
        async getExamResult(value) {
            const url = this.$backendURL + '/answer/' + this.user_id + '/' + value;
            var response = await this.$axios.get(url);
            return response.data.answerdetail.test_result;
            // .then((response) => {
            //     return response.data.answerdetail.test_result;
            //     // var index = this.examlist.findIndex((e)=>e.test_id == value);
            //     // this.$set(this.examlist[index],"test_status",score < 60 ? -1 : 1);
            // })
            // .catch((error) => {
            //     this.$set(this.examlist[index],"test_status",0);
            // })
        },
        test(value) {
            sessionStorage.setItem('test_id', value)
            this.$router.push({
                name: 'Test'
            })
        },
        result(value) {
            sessionStorage.setItem('test_id', value)
            this.$router.push({
                name: 'Score'
            })
        },
    }
}
</script>





<style scoped>
/*---------------
表
----------------*/
/* #table>>>#search_table table tr:hover {
    background-color: rgb(233, 233, 233) !important;
}

#table>>>.vgt-input,
.vgt-select {
    width: 45% !important;
}

#table>>>.vgt-global-search {
    padding: 5px 2px !important;
    border: 1px solid #f0f0f0 !important;
}

#table>>>.vgt-fixed-header {
    position: absolute !important;
     z-index: 10 !important; 
    width: 100% !important;
    overflow-x: auto !important;
}

#table>>>.vgt-table thead th {
    color: white !important;
    background: #9bbb59 !important;
    padding: .32em .0em .32em .68em !important;
    text-align: center !important;
}

#table>>>.vgt-table th.sortable:after,
#table>>>.vgt-table th.sortable::before {
    right: 0px !important;
}

#table>>>table.vgt-table {
    font-size: 16px !important;
    max-width: 1000px !important;
}

#table>>>table.vgt-table td {
    vertical-align: middle !important;
}

#table>>>.vgt-left-align {
    text-align: left !important;
    vertical-align: middle !important;
} */

/* 
table tr td {
    padding: 12px 48px;
}

table tr td:first-child {
    text-align: left;
} */


/* .dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
    padding: 12px 16px;
}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown-content span {
    color: black;
    padding: 12px;
    text-decoration: none;
    display: block;
}

.dropdown-content span:hover {
    background-color: #f1f1f1
}

.dropdown:hover .dropdown-content {
    display: block;
} */

.page-title {
    margin-bottom: 32px;
}

.layout {
    padding: 48px;
    text-align: center;
}

.test-status {
    width: 96px;
    padding: 8px;
    border-radius: 8px;
    font-size: 14px;
    font-weight: bold;
}

.test-status-waiting {
    background-color: transparent;
    border: 2px solid #4682b4;
    color: #4682b4;
}

.test-status-failure {
    background-color: transparent;
    border: 2px solid #ffa500;
    color: #ffa500;
}

.test-status-success {
    border: 0;
    background-color: #66cdaa;
}

.page-button {
    margin: 32px;
    width: 64px;
    padding: 8px;
    border-radius: 8px;
    font-size: 14px;
    font-weight: bold;
    background-color: transparent;
}
</style>
