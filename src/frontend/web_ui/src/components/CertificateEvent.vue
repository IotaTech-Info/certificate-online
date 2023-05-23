<template>
    <div>
        <!--ヘッダータイトル-->
        <header id="head">
            <div id="title">
                <h1 class="head_title">col-pro</h1>
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
                    <h1 class="page-title">{{ $t("certificate_event.title") }}</h1>
                    <VueGoodTable ref="certificateEventListTable" styleClass="vgt-table" 
                        :columns="columns" 
                        :rows="certificateEventList"                     
                        :pagination-options="{
                            enabled: true,
                            perPage:5,
                            prevLabel: $t('certificate_event.page-pre'),
                            nextLabel: $t('certificate_event.page-next'),
                            rowsPerPageLabel: $t('certificate_event.page-per'),
                        }
                        ">
                    </VueGoodTable>
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
import 'vue-good-table/dist/vue-good-table.css';
import { VueGoodTable } from 'vue-good-table';


export default {
    data() {
        return {
            user_id: "1",
            certificateEventList: [],
        }
    },
    computed: {
        columns() {
            return [
                {
                    label: this.$t("certificate_event.user_name"),
                    field: "user_name",
                    width: "20%",
                },
                {
                    label: this.$t("certificate_event.certificate_category"),
                    field: "certificate_category",
                    width: "10%",
                },
                {
                    label: this.$t("certificate_event.certificate_name"),
                    field: "certificate_name",
                    width: "25%",
                },
                {
                    label: this.$t("certificate_event.certificate_status"),
                    field: "certificate_status",
                    width: "15%",
                },
                {
                    label: this.$t("certificate_event.expected_date"),
                    field: "expected_date",
                    width: "15%",
                },
                {
                    label: this.$t("certificate_event.acquisition_date"),
                    field: "acquisition_date",
                    width: "15%",
                },
            ]
        }
    },
    components: {
        VueGoodTable,
    },
    mounted: function () {
        this.setLanguageData();
        this.getcertificateEventList();
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
        getcertificateEventList() {

            const url = this.$backendURL + '/certificate_events';
            this.$axios.get(url)
                .then((response) => {
                    this.certificateEventList = response.data.certificate_events;
                })
                .catch((error) => {
                    this.$router.push({
                        name: 'Information',
                        params: { error }
                    })
                })

        }
    }
}
</script>


<style scoped>
.page-title {
    margin-bottom: 32px;
}

.layout {
    padding: 48px;
    text-align: center;
}

.certificate_description {
    width: 96px;
    padding: 8px;
    border-radius: 8px;
    font-size: 14px;
    font-weight: bold;
}

.certificate_description-waiting {
    background-color: transparent;
    border: 2px solid #4682b4;
    color: #4682b4;
}

.certificate_description-failure {
    background-color: transparent;
    border: 2px solid #ffa500;
    color: #ffa500;
}

.certificate_description-success {
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
