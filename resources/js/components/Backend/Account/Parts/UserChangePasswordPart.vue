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
                                <h6>Update Password</h6>
                                <span class="fs-13 color-light fw-400">
                                                   Update Password.</span>
                            </div>
                        </div>
                        <div class="card-body">
                           <div class="col-md-6 m-auto">
                               <div class="form-group">
                                   <label for="">New Password</label>
                                   <input type="password" class="form-control" placeholder="New Password">
                               </div>

                               <div class="form-group">
                                   <label for="">Confirm Password</label>
                                   <input type="password" class="form-control" placeholder="Confirm Password">
                               </div>

                               <div class="form-group">
                                   <input type="submit" class="btn btn-block btn-primary">
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
    name: "UserChangePasswordPart"
}
</script>

<style scoped>

</style>
