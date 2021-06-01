<template>
    <div class="domains_page">
        <div class="row">
            <div class="col-lg-12">

                <div class="breadcrumb-main">
                    <h4 class="text-capitalize breadcrumb-title">Blocked IP's</h4>
                    <div class="breadcrumb-action justify-content-center flex-wrap">
                        <div class="action-btn">
                            <div data-toggle="modal" data-target="#createOrEditModal"
                                 class="btn btn-sm btn-primary btn-add">
                                <i class="la la-plus"></i> Add New IP
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="card mb-25">
                    <div class="card-header">
                        <h6>All Blocked IP's</h6>
                    </div>
                    <div class="card-body pt-0 pb-0">
                        <div class="">
                            <div class="table-responsive-lg bg-white w-100 mb-30">
                                <table class="table mb-0 table-basic ">
                                    <thead>
                                    <tr>
                                        <td>ID.</td>
                                        <td>IP</td>
                                        <td>Note</td>
                                        <td width="250px">Added At</td>
                                        <td width="250px"></td>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr v-for="(bIp,index) in blockedIps">
                                        <td>
                                            {{ index + 1 }}
                                        </td>
                                        <td>
                                            {{ bIp.ip }}
                                        </td>
                                        <td>
                                            {{ bIp.note }}
                                        </td>
                                        <td>
                                            {{ bIp.created_at }}
                                        </td>

                                        <td>
                                            <div class="table-actions">
                                                <div class="table-actions">
                                                    <a @click="callEditPopup(index)">
                                                        <i class="las la-edit"></i>
                                                    </a>
                                                    <a @click="callDeletePopup(index)">
                                                        <i class="las la-trash"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ends: card -->

            </div>
        </div>

        <div class="modal fade task-modal" id="createOrEditModal" tabindex="-1" aria-labelledby="taskModalLabal"
             aria-hidden="true">
            <div class="modal-dialog mt-100">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="modal-header">
                            <h5 class="modal-title">Block IP</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span data-feather="x"></span>
                            </button>
                        </div>
                        <form @submit.prevent="addOrUpdate" method="post">
                            <br>
                            <div class="form-group">
                                <label for="">IP</label>
                                <input placeholder="0.0.0.0" type="text" v-model="formData.ip" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="">Note</label>
                                <textarea placeholder="Description" v-model="formData.note" cols="30"
                                          rows="3"
                                          class="form-control"></textarea>
                            </div>
                            <br>
                            <div class="modal-footer m-n15">
                                <button @click="resetFormData" type="reset" class="btn btn-light" data-dismiss="modal">
                                    Cancel
                                </button>
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: "BlockedIPIndex",
    data() {
        return {
            blockedIps: [],
            formData: {
                id: null,
                ip: null,
                note: null,
            },
        }
    },
    mounted() {
        this.getAllBlockedIps();
    },
    methods: {
        jqueryFunction: function () {
            loadSvgIcons();
        },
        callEditPopup(index) {
            let blockedIp = this.blockedIps[index];
            if (blockedIp?.id) {
                this.formData.id = blockedIp.id;
                this.formData.ip = blockedIp.ip;
                this.formData.note = blockedIp.note;
                $('#createOrEditModal').modal('show');
            }
        },
        getAllBlockedIps() {
            axios.get(`/blocked-ips/all`)
                .then(response => {
                    this.blockedIps = response.data.ips;
                })
                .catch(err => {
                    this.$toast.error("Request Failed.");
                })
        },
        addOrUpdate() {
            if (this.formData.id === null) {
                this.createNew();
            } else {
                this.update();
            }
        },
        createNew() {
            axios.post(`/blocked-ips/store`, this.formData)
                .then(response => {
                    if (response.data.success) {
                        this.blockedIps.push(response.data.ip);
                        $('#createOrEditModal').modal('hide');
                        this.$toast.success("IP Blocked.");
                    } else {
                        this.$toast.error(response.data.message);

                    }
                })
                .catch(err => {
                    this.$toast.error("Request Failed.");
                })
        },
        update() {
            axios.post(`/blocked-ips/${this.formData.id}/update`, this.formData)
                .then(response => {
                    if (response.data.success) {

                        let index = this.blockedIps.findIndex(x => x.id === response.data.ip.id);
                        this.blockedIps[index] = response.data.ip;
                        this.resetFormData();
                        $('#createOrEditModal').modal('hide');
                        this.$toast.success("IP updated Successfully.");

                    }
                })
                .catch(err => {
                    this.$toast.error("Request Failed.");

                })
        },
        resetFormData() {
            this.formData.id = null;
            this.formData.ip = null;
            this.formData.note = null;
        },
        delete(index) {
            axios.post(`/blocked-ips/${this.blockedIps[index].id}/delete`)
                .then(response => {
                    if (response.data.success) {
                        this.blockedIps.splice(index, 1);
                        this.$toast.success("IP Removed From Blocked List.");
                    }
                })
                .catch(err => {
                    this.$toast.error("Request Failed.");
                })
        },
        callDeletePopup(index) {
            let vm = this;
            this.$swal.fire({
                title: "Are you sure?",
                text: "You won't be able to revert this!",
                icon: "warning",
                showCancelButton: true,
                confirmButtonText: "Yes, delete it!"
            }).then(function (result) {
                if (result.value) {
                    vm.delete(index);
                }
            });
        }
    }
}
</script>

<style scoped>
.mt-100 {
    margin-top: 100px !important;
}

.modal-dialog {
    max-width: 500px !important;
}

.dns-table .modal-dialog {
    min-width: 600px !important;
    font-size: 14px;
}

a {
    cursor: pointer;
}

.bg-Rejected {
    background-color: #ff4d4f !important;
}

.bg-Approved {
    background-color: #20c997 !important;
}

.bg-Pending {
    background-color: #fa8b0c !important;
}

table i {
    font-size: 20px;
}

input#url {
    height: 46px;
    border-radius: 0;
}

input#name {
    height: 46px;
    border-radius: 0;
}

small.need-help {
    margin-top: 10px !important;
    color: #848484;
    font-size: 14px;
}


small, .small {
    font-size: 90%;
    font-weight: 400;
}


</style>
