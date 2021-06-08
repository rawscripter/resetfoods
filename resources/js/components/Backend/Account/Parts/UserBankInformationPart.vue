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
                                <h6>Update Bank Information</h6>
                                <span class="fs-13 color-light fw-400">
                                     Bank Information.
                                </span>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="bank_name">Bank Name:</label>
                                        <input type="text" id="bank_name" class="form-control" placeholder="Bank Name">
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="bank_contact_number">Contact number:</label>
                                        <input type="text" id="bank_contact_number" class="form-control"
                                               placeholder="Contact Number">
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="bank_address">Bank Address:</label>
                                        <input type="text" id="bank_address" class="form-control"
                                               placeholder="Bank Address">
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="bank_number">Bank Number:</label>
                                        <input type="text" id="bank_number" class="form-control"
                                               placeholder="Bank Number">
                                    </div>
                                </div>
                                <hr>
                                <br>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="account_name">Account Name:</label>
                                        <input type="text" id="account_name" class="form-control"
                                               placeholder=" Account Name">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="account_type">Account Type:</label>
                                        <input type="text" id="account_type" class="form-control"
                                               placeholder=" Account Type">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="account_number">Account Number:</label>
                                        <input type="text" id="account_number" class="form-control"
                                               placeholder="Account Number">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="branch_number">Branch Number:</label>
                                        <input type="text" id="branch_number" class="form-control"
                                               placeholder="Branch Number">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="transit_number">Transit Number:</label>
                                        <input type="text" id="transit_number" class="form-control"
                                               placeholder="Transit Number">
                                    </div>
                                </div>
                                <hr>
                                <div class="col-12">
                                    <div class="form-group text-right">
                                        <input type="submit" class="btn btn-primary btn-block"
                                               value="Update Bank Information">
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
    name: "UserBankInformationPart"
}
</script>

<style scoped>

</style>
