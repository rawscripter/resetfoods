<template>
    <div class="domains_page">
        <div class="row">
            <div class="col-lg-12">

                <div class="breadcrumb-main">
                    <h4 class="text-capitalize breadcrumb-title">domains</h4>
                    <div class="breadcrumb-action justify-content-center flex-wrap">
                        <div class="action-btn">
                            <div data-toggle="modal" data-target="#domainModal" class="btn btn-sm btn-primary btn-add">
                                <i class="la la-plus"></i> Add New Domain
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
                        <h6>All Domains</h6>
                    </div>
                    <div class="card-body pt-0 pb-0">
                        <div class="">
                            <div class="table-responsive-lg bg-white w-100 mb-30">
                                <table class="table mb-0 table-basic ">
                                    <thead>
                                    <tr>
                                        <td>ID.</td>
                                        <td>Domain Name</td>
                                        <td>Protocol</td>
                                        <td>Details</td>
                                        <td>Links</td>
                                        <td>Status</td>
                                        <td>Added At</td>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr v-for="(domain,domainIndex) in domains">
                                        <td>
                                            {{ domainIndex + 1 }}
                                        </td>
                                        <td>
                                            {{ domain.url }}
                                        </td>
                                        <td>
                                            {{ domain.protocol }}
                                        </td>
                                        <td>
                                            {{ domain.short_details }}
                                        </td>
                                        <td>
                                            {{ domain.links }}
                                        </td>

                                        <td>
                                            <span class="media-badge color-white"
                                                  :class="`bg-${domain.status_text}`">{{ domain.status_text }}</span>

                                        </td>

                                        <td>
                                            <span class="date">{{
                                                    domain.created_at | formatDateIntoNormalFormat
                                                }}</span>
                                        </td>
                                        <td>
                                            <div class="table-actions">
                                                <a @click="showDnsSetupPopUp(domainIndex)">
                                                    <i class="las la-cog"></i>
                                                </a>

                                                <a @click="callDomainEditPopup(domainIndex)">
                                                    <i class="las la-edit"></i>
                                                </a>
                                                <a @click="callDeletePopup(domainIndex)">
                                                    <i class="las la-trash"></i>
                                                </a>
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

        <div class="modal fade task-modal" id="domainModal" tabindex="-1" aria-labelledby="taskModalLabal"
             aria-hidden="true">
            <div class="modal-dialog mt-100">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="modal-header">
                            <h5 class="modal-title">Step 1: Domain Setup</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span data-feather="x"></span>
                            </button>
                        </div>
                        <form @submit.prevent="addOrUpdateDomain" method="post">
                            <br>
                            <div class="row">
                                <div class="col-4">
                                    <select name="" v-model="formData.protocol" id="" class="form-control">
                                        <option value="https://">https://</option>
                                        <option value="http://">http://</option>
                                    </select>
                                </div>
                                <div class="col-8  pl-0">
                                    <div class="form-group mb-15">
                                        <input required type="text" id="url" v-model="formData.url" class="form-control"
                                               placeholder="Domain Name">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <textarea placeholder="Description" v-model="formData.details" cols="30" rows="3"
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
        <div class="modal fade task-modal dns-table" id="setupDnsModal" tabindex="-1" aria-labelledby="taskModalLabal"
             aria-hidden="true">
            <div class="modal-dialog mt-100">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="modal-header">
                            <h5 class="modal-title">Step 2: Configure Your Dns Record</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span data-feather="x"></span>
                            </button>
                        </div>
                        <br>
                        <div class="form-group">
                            <div class="application-faqs mt-4">
                                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                    <div class="panel panel-default  border-0">
                                        <div role="tabpanel"
                                             aria-labelledby="headingOne" style="">
                                            <div class="panel-body p-3 border-0">
                                                <div class="mb-sm-10">
                                                    <table class="table">
                                                        <thead>
                                                        <tr>
                                                            <td width="25%">Type</td>
                                                            <td width="50%">Hostname</td>
                                                            <td width="25%">Points to</td>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <tr>
                                                            <td>A</td>
                                                            <td>{{ dns.domain }}</td>
                                                            <td>88.99.28.24</td>
                                                        </tr>
                                                        <tr>
                                                            <td>A</td>
                                                            <td>{{ dns.domain }}</td>
                                                            <td>88.99.28.24</td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                    <div class="text-center mt-1  mb-3 ">
                                                        <small class="need-help">If you are using a subdomain, set a
                                                            CNAME as follows:</small>
                                                    </div>
                                                    <table class="table">
                                                        <thead>
                                                        <tr>
                                                            <td width="25%">Type</td>
                                                            <td width="50%">Hostname</td>
                                                            <td width="25%">Points to</td>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <tr>
                                                            <td>CNAME</td>
                                                            <td>{{ dns.domain }}</td>
                                                            <td>cname.linkbii.com</td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                    <br>
                                                    <p class="mt-1"><small>Please note it can take up to 24 hours for
                                                        domain changes to propagate. https://support.linkbii.com</small>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="modal-footer m-n15">
                            <button type="reset" class="btn btn-sm btn-primary" data-dismiss="modal">
                                Close
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: "DomainIndex",
    data() {
        return {
            domains: [],
            formData: {
                id: null,
                name: null,
                url: null,
                protocol: 'https://',
                details: ''
            },
            dns: {
                domain: null,
            }
        }
    },
    mounted() {
        this.getAllDomains();

        setTimeout(function (evt) {
            this.jqueryFunction();
        }.bind(this), 500);
    },
    methods: {
        jqueryFunction: function () {
            loadSvgIcons();
            $("select").select2({
                minimumResultsForSearch: -1

            });
        },
        callDomainEditPopup(domainIndex) {
            let domain = this.domains[domainIndex];
            if (domain?.id) {
                this.formData.id = domain.id;
                this.formData.url = domain.url;
                this.formData.details = domain.details;
                $('#domainModal').modal('show');
            }
        },
        getAllDomains() {
            axios.get(`/domains/all`)
                .then(response => {
                    this.domains = response.data.domains;
                })
                .catch(err => {
                    this.$toast.error("Request Failed.");
                })
        },
        addOrUpdateDomain() {
            if (this.formData.id === null) {
                this.createNewDomain();
            } else {
                this.updateDomain();
            }
        },
        showDnsSetupPopUp(domainIndex) {
            let domain = this.domains[domainIndex];
            this.dns.domain = domain.url;
            $('#setupDnsModal').modal('show');
        },
        createNewDomain() {
            axios.post(`/domain/store`, this.formData)
                .then(response => {
                    if (response.data.success) {
                        this.domains.push(response.data.domain);
                        $('#domainModal').modal('hide');
                        this.dns.domain = response.data.domain.url;
                        $('#setupDnsModal').modal('show');
                        this.resetFormData();
                        this.$toast.success("Domain Added Successfully.");
                    }
                })
                .catch(err => {
                    this.$toast.error("Request Failed.");
                })
        },
        updateDomain() {
            axios.post(`/domain/${this.formData.id}/update`, this.formData)
                .then(response => {
                    if (response.data.success) {
                        let domainIndex = this.domains.findIndex(x => x.id === response.data.domain.id);
                        this.domains[domainIndex] = response.data.domain;
                        this.resetFormData();
                        $('#domainModal').modal('hide');
                        this.$toast.success("Domain updated Successfully.");

                    }
                })
                .catch(err => {
                    this.$toast.error("Request Failed.");

                })
        },
        resetFormData() {
            this.formData.id = null;
            this.formData.name = null;
            this.formData.url = null;
        },
        deleteDomain(domainIndex) {
            axios.post(`/domain/${this.domains[domainIndex].id}/delete`)
                .then(response => {
                    if (response.data.success) {
                        this.domains.splice(domainIndex, 1);
                        this.$toast.success("Domain Deleted Successfully.");
                    }
                })
                .catch(err => {
                    this.$toast.error("Request Failed.");
                })
        },
        callDeletePopup(domainIndex) {
            let vm = this;
            this.$swal.fire({
                title: "Are you sure?",
                text: "You won't be able to revert this!",
                icon: "warning",
                showCancelButton: true,
                confirmButtonText: "Yes, delete it!"
            }).then(function (result) {
                if (result.value) {
                    vm.deleteDomain(domainIndex);
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
