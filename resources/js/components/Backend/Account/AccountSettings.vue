<template>
    <div class="profile-setting ">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-main">
                        <h4 class="text-capitalize breadcrumb-title">My profile</h4>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-4 col-sm-5">
                    <AccountSidebar @activeComponent="activeComponent"></AccountSidebar>
                </div>
                <div class="col-xl-9 col-lg-8 col-sm-7">
                    <component v-bind:is="component"></component>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import UserPersonalInfoPart from "./Parts/UserPersonalInfoPart";
import AccountSidebar from "./Parts/AccountSidebar";
import UserPreferencesPart from "./Parts/UserPreferencesPart";
import UserChangePasswordPart from "./Parts/UserChangePasswordPart";
import UserDeliveryLocationPart from "./Parts/UserDeliveryLocationPart";
import UserBankInformationPart from "./Parts/UserBankInformationPart";
import UserNotificationPart from "./Parts/UserNotificationPart";

export default {
    name: "AccountSettings",
    components: {
        UserPersonalInfoPart,
        UserPreferencesPart,
        UserChangePasswordPart,
        UserDeliveryLocationPart,
        UserBankInformationPart,
        UserNotificationPart,
        AccountSidebar
    },
    data() {
        return {
            component: 'UserChangePasswordPart',
        }
    },
    mounted() {
        setTimeout(function (evt) {
            this.jqueryFunction();
        }.bind(this), 500);

    },
    methods: {
        jqueryFunction: function () {
            loadSvgIcons();
        },

        activeComponent(val) {
            this.component = val;
        },

    }
}
</script>


<style scoped>

</style>
