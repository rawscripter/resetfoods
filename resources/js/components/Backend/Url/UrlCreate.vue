<template>
    <div class="url_create_section">
        <div class="row">
            <div class="col-lg-12">
                <div class="shop-breadcrumb">
                    <div class="breadcrumb-main">
                        <h4 class="text-capitalize breadcrumb-title">Create New Link</h4>
                    </div>
                </div>
            </div>
        </div>
        <div
            class=" checkout wizard9 global-shadow border px-sm-50 px-20 pt-sm-50 py-30 mb-30 bg-white radius-xl w-100">
            <div class="row">
                <div class="col-xl-12">
                    <div class="row justify-content-center">
                        <div class="col-lg-3">
                            <UrlCreateLeftSidebar :activeMenu="activeMenu"></UrlCreateLeftSidebar>
                        </div>
                        <div class="col-lg-9">
                            <transition name="fade">

                                <component v-show="!isLoading" @previousStep="previousStep" @nextStep="nextStep"
                                           :url="url"
                                           v-bind:is="component"></component>
                            </transition>
                        </div><!-- ends: col -->
                    </div>
                </div><!-- ends: col -->
            </div>
        </div><!-- End: .global-shadow-->
    </div>
</template>

<script>
import UrlCreateLeftSidebar from './Parts/UrlCreateLeftSidebar';
import UrlSetupPart from "./Parts/UrlSetupPart";
import UrlAdditionalSetupPart from "./Parts/UrlAdditionalSetupPart";
import UrlDomainSetupPart from "./Parts/UrlDomainSetupPart";
import UrlSetupFinishPart from "./Parts/UrlSetupFinishPart";
import UrlAccessControlSetupPart from "./Parts/UrlAccessControlSetupPart";


export default {
    name: "UrlCreate",
    components: {
        UrlCreateLeftSidebar,
        'step-1': UrlSetupPart,
        'step-2': UrlAdditionalSetupPart,
        'step-3': UrlDomainSetupPart,
        'step-4': UrlAccessControlSetupPart,
        'step-5': UrlSetupFinishPart,
    },
    data() {
        return {
            isLoading: false,
            url: null,
            activeMenu: 1,
            component: `step-1`,
            urlID: null
        }
    },
    created() {
        this.isLoading = !!this.$route.params?.url;
    },
    watch: {
        '$route.query.step': {
            immediate: true,
            handler(newVal) {
                if (newVal !== undefined) {
                    this.activeMenu = newVal;
                    this.component = `step-` + newVal;
                }
            }
        },
        '$route.params.url': {
            immediate: true,
            handler(newVal) {
                if (newVal !== undefined) {
                    this.urlID = this.$route.params?.url;
                    this.getUrlInfo();
                }
            }
        },
    },
    methods: {
        getUrlInfo() {
            axios.get(`/url/${this.urlID}/get`)
                .then(response => {
                    if (response.data.success) {
                        this.url = response.data.url;
                        this.isLoading = false;

                        console.log(response.data.url)
                    }
                })
                .catch(err => {
                    console.error(err)
                });
        },
        nextStep(val) {
            this.activeMenu = val;
            this.component = 'step-' + val;
        },
        previousStep(val) {
            this.activeMenu = val;
            this.component = 'step-' + val;
        },
    }

}
</script>

<style scoped>

.fade-enter-active, .fade-leave-active {
    transition: opacity .3s;
}

.fade-enter, .fade-leave-to /* .fade-leave-active below version 2.1.8 */
{
    opacity: 0;
}
</style>
