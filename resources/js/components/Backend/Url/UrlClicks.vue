<template>
    <div class="container-fluid" v-if="!isLoading">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-main application-ui mb-30">
                    <div class="breadcrumb-action d-flex">
                        <div class="btn-group-toggle">
                            <router-link :to="{name:'url-details',params:{url:url.id}}" tag="div"
                                         class="btn btn-primary ">
                                <i class="las la-arrow-left"></i>
                                Go Back
                            </router-link>
                        </div>
                        <div class="d-flex align-items-center user-member__title mr-sm-25 mr-0 ml-3">
                            <h4 class="text-capitalize fw-500 breadcrumb-title">click stream of {{ url.name }}</h4>
                        </div>


                    </div>
                    <div class="breadcrumb-action justify-content-center flex-wrap">
                        <div class="action-btn mr-2">
                            <div class="form-group mb-0">
                                <div class="input-container icon-left position-relative">
                                                <span class="input-icon icon-left">
                                                    <span data-feather="calendar"></span>
                                                </span>
                                    <input type="text" class="form-control form-control-default date-ranger"
                                           name="date-ranger" placeholder="Oct 30, 2019 - Nov 30, 2019">
                                    <span class="input-icon icon-right">
                                                    <span data-feather="chevron-down"></span>
                                                </span>
                                </div>
                            </div>
                        </div>
                        <div class="dropdown action-btn mr-2">
                            <router-link :to="{name:'url-details',params:{url:url.id}}" tag="button"
                                         class="btn btn-sm btn-default btn-white  ">
                                <i class="las la-users"></i>
                                Details
                            </router-link>
                        </div>
                        <div class="dropdown action-btn mr-2">
                            <button class="btn btn-sm btn-default btn-white dropdown-toggle" type="button"
                                    id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">
                                <i class="la la-download"></i> Export
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                                <a href="#" class="dropdown-item">
                                    <i class="la la-print"></i> Clicks</a>
                                <a href="#" class="dropdown-item">
                                    <i class="la la-print"></i> Views</a>
                            </div>
                        </div>
                        <div class="dropdown action-btn mr-2">
                            <button class="btn btn-sm btn-default btn-white dropdown-toggle" type="button"
                                    id="dropdownMenu3" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">
                                <i class="la la-share"></i> Share
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenu3">
                                <a href="" class="dropdown-item">
                                    <i class="la la-facebook"></i> Facebook</a>
                                <a href="" class="dropdown-item">
                                    <i class="la la-twitter"></i> Twitter</a>
                                <a href="" class="dropdown-item">
                                    <i class="la la-google"></i> Google</a>
                                <a href="" class="dropdown-item">
                                    <i class="la la-feed"></i> Feed</a>
                                <a href="" class="dropdown-item">
                                    <i class="la la-instagram"></i> Instagram</a>
                            </div>
                        </div>
                        <router-link :to="{name:'url-edit',params:{url:url.id}}" type="button"
                                     class="breadcrumb-edit border-0 color-primary content-center bg-white fs-12 fw-500 radius-md">
                            <span data-feather="edit-3"></span>edit
                        </router-link>
                        <button type="button"
                                class="breadcrumb-remove border-0 color-danger content-center bg-white fs-12 fw-500 ml-10 radius-md">
                            <span data-feather="trash-2"></span>remove
                        </button>
                    </div>
                </div>

            </div>
        </div>
        <!-- Tab Menu End -->
        <div class="projects-tab-content mb-30">
            <div class="row">
                <div class="col-xl-12 col-lg-12 col-12 mb-25 ">
                    <UrlCLicksTable :url="url"></UrlCLicksTable>
                </div>
            </div>
        </div>
        <!-- ends: project tab -->
    </div>

</template>

<script>
import UrlCLicksTable from "../Campaign/Parts/UrlCLicksTable";

export default {
    name: "UrlClicks",
    components: {UrlCLicksTable},
    data() {
        return {
            showTrafficChart: false,
            urlID: null,
            url: null,
            isLoading: false
        }
    },
    mounted() {
        setTimeout(function (evt) {
            this.jqueryFunction();
        }.bind(this), 500);

    },
    watch: {
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
        jqueryFunction: function () {
            initjQueryCharts();
            loadSvgIcons();

            let start = moment().subtract(6, "days");
            let end = moment();

            $('input[name="date-ranger"]').daterangepicker({
                singleDatePicker: false,
                startDate: start,
                endDate: end,
                autoUpdateInput: false,
                ranges: {
                    Today: [moment(), moment()],
                    Yesterday: [moment().subtract(1, "days"), moment().subtract(1, "days")],
                    "Last 7 Days": [moment().subtract(6, "days"), moment()],
                    "This Month": [moment().startOf("month"), moment().endOf("month")],
                    "Last Month": [
                        moment().subtract(1, "month").startOf("month"),
                        moment().subtract(1, "month").endOf("month"),
                    ],
                },
            });

        },

        getUrlInfo() {
            this.isLoading = true;

            axios.get(`/url/${this.urlID}/get`)
                .then(response => {
                    if (response.data.success) {
                        this.url = response.data.url;
                        this.isLoading = false;
                    }
                })
                .catch(err => {
                    console.error(err)
                });
        },
    },
}
</script>

<style scoped>
.text-sm, .btn span, .btn i {
    font-size: 13px !important;;
}

.table-revenue {
    min-height: unset;
}
</style>
