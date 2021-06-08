<template>
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
</template>

<script>
export default {
    name: "UserPersonalInfoPart"
}
</script>

<style scoped>

</style>
