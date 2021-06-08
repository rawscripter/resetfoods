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
                                <h6>Update Notification part</h6>
                                <span class="fs-13 color-light fw-400">
                                     Notification Settings.
                                </span>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="col-lg-12">
                                <div class="form-group">

                                    <div class="checkbox-theme-default custom-checkbox ">
                                        <input class="checkbox" type="checkbox" id="check-grid-1">
                                        <label for="check-grid-1">
                                                            <span class="checkbox-text">
                                                               Email Notification
                                                            </span>
                                        </label>
                                    </div>


                                </div>
                                <div class="form-group">
                                    <div class="checkbox-theme-default custom-checkbox ">
                                        <input class="checkbox" type="checkbox" id="check-grid-2">
                                        <label for="check-grid-2">
                                                            <span class="checkbox-text">
                                                               SMS Notification
                                                            </span>
                                        </label>
                                    </div>
                                    <br>
                                    <div class="form-group">
                                        <div class="btn btn-primary btn-sm">
                                            Save Changes
                                        </div>
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
    name: "UserNotificationPart"
}
</script>

<style scoped>

</style>
