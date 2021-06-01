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
                    <!-- Profile Acoount -->
                    <div class="card mb-25">
                        <div class="card-body text-center p-0">

                            <div
                                class="account-profile border-bottom pt-25 px-25 pb-0 flex-column d-flex align-items-center ">
                                <div class="ap-img mb-20 pro_img_wrapper">
                                    <input id="file-upload" type="file" name="fileUpload" class="d-none">
                                    <label for="file-upload">
                                        <!-- Profile picture image-->
                                        <img class="ap-img__main rounded-circle wh-120" src="/img/author/profile.png"
                                             alt="profile">
                                        <span class="cross" id="remove_pro_pic">
                                                    <span data-feather="camera"></span>
                                                </span>
                                    </label>
                                </div>
                                <div class="ap-nameAddress pb-3">
                                    <h5 class="ap-nameAddress__title">Shuvo Goswami</h5>
                                    <p class="ap-nameAddress__subTitle fs-14 m-0">Buyer</p>
                                </div>
                            </div>
                            <div class="ps-tab p-20 pb-25">
                                <div class="nav flex-column text-left" id="v-pills-tab" role="tablist"
                                     aria-orientation="vertical">
                                    <a class="nav-link " id="v-pills-home-tab" data-toggle="pill"
                                       href="#v-pills-home" role="tab" aria-controls="v-pills-home"
                                       aria-selected="true">
                                        <span data-feather="user"></span>Edit profile</a>
                                    <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill"
                                       href="#v-pills-profile" role="tab" aria-controls="v-pills-profile"
                                       aria-selected="false">
                                        <span data-feather="settings"></span>Update Preferences</a>
                                    <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill"
                                       href="#v-pills-messages" role="tab" aria-controls="v-pills-messages"
                                       aria-selected="false">
                                        <span data-feather="key"></span>change password</a>
                                    <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill"
                                       href="#v-pills-settings" role="tab" aria-controls="v-pills-settings"
                                       aria-selected="false">
                                        <span data-feather="users"></span>Delivery Locations</a>
                                    <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill"
                                       href="#v-pills-settings" role="tab" aria-controls="v-pills-settings"
                                       aria-selected="false">
                                        <span data-feather="users"></span>Bank Informatiton</a>
                                    <a class="nav-link" id="v-pills-notification-tab" data-toggle="pill"
                                       href="#v-pills-notification" role="tab" aria-controls="v-pills-notification"
                                       aria-selected="false">
                                        <span data-feather="bell"></span>notification</a>
                                </div>
                            </div>

                        </div>
                    </div>
                    <!-- Profile Acoount End -->
                </div>
                <div class="col-xl-9 col-lg-8 col-sm-7">

                    <div class="mb-50">
                        <div class="tab-content" id="v-pills-tabContent">
                            <div class="tab-pane fade  show active" id="api-access-token-area" role="tabpanel"
                                 aria-labelledby="v-pills-home-tab">
                                <!-- Edit Profile -->
                                <div class="edit-profile">
                                    <div class="card">
                                        <div class="card-header px-sm-25 px-3">
                                            <div class="edit-profile__title">
                                                <h6>Update Profile</h6>
                                                <span class="fs-13 color-light fw-400">
                                                   Update Profile.</span>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <div class="row justify-content-center">
                                                <div class="col-6">
                                                    <div class="form-group"><label for="">Full name</label>
                                                        <input type="text" class="form-control"></div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="form-group"><label for="">Company name</label>
                                                        <input type="text" class="form-control"></div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="form-group"><label for="">Street Address</label>
                                                        <input type="text" class="form-control"></div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="form-group"><label for="">City</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="form-group"><label for="">State</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="form-group"><label for="">Zip Code</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="form-group"><label for="">Country</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                </div>

                                                <div class="col-6">
                                                    <div class="form-group"><label for="">Email Address</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Edit Profile End -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>


<script>
export default {
    name: "AccountSettings",
    data() {
        return {
            apiAccessToken: null,
        }
    },
    mounted() {
        setTimeout(function (evt) {
            this.jqueryFunction();
        }.bind(this), 500);
        this.getApiAccessToken();
    },
    methods: {
        copyURL() {
            var Url = document.getElementById('generated_token'); /*GET vuejs el reference here (via $ref) but how?*/
            Url.innerHTML = window.location.href;
            Url.select();
            document.execCommand("copy");
            this.$toast.success("Token Copied to clipboard.")
        },

        jqueryFunction: function () {
            loadSvgIcons();
            $("select").select2({
                minimumResultsForSearch: -1

            });
        },
        getApiAccessToken() {
            axios.get(`/get/api-access-token`)
                .then(response => {
                    if (response.data.success) {
                        this.apiAccessToken = response.data.token;
                    } else {
                        this.$toast.error("Request Failed.");
                    }
                })
                .catch(err => {
                    console.error(err)
                })
        },
        generateApiAccessToken() {
            axios.post(`/generate/api-access-token`)
                .then(response => {
                    if (response.data.success) {
                        this.apiAccessToken = response.data.token;
                        this.$toast.success("New Token has been generated.");

                    } else {
                        this.$toast.error("Request Failed.");
                    }
                })
                .catch(err => {
                    this.$toast.error("Request Failed.");
                })
        }
    }
}
</script>


<style scoped>

</style>
