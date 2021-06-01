<template>
    <div class="container-fluid" v-if="!isLoading">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-main application-ui mb-30">
                    <div class="breadcrumb-action d-flex">
                        <div class="btn-group-toggle">
                            <router-link :to="{name:'urls'}" tag="div"
                                         class="btn btn-primary ">
                                <i class="las la-arrow-left"></i>
                                Go Back
                            </router-link>
                        </div>
                        <div class="d-flex align-items-center user-member__title mr-sm-25 mr-0 ml-3">
                            <h4 class="text-capitalize fw-500 breadcrumb-title">{{ url.name }}</h4>
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
                        <div class="mr-2">
                            <router-link :to="{name:'url-clicks',params:{url:url.id}}" tag="button"
                                         class="btn btn-sm btn-default btn-white  ">
                                <i class="las la-users"></i>
                                Clicks
                            </router-link>
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
                <div class="col-xl-3 col-lg-3 mb-25">


                    <div class="user-group radius-xl bg-white media-ui media-ui--early pt-30 pb-25 mb-25 ">
                        <div class=" border-bottom   px-30">
                            <div class="media user-group-media d-flex justify-content-between">
                                <div
                                    class="media-body d-flex align-items-center flex-wrap text-capitalize my-sm-0 my-n2">
                                    <router-link
                                        :to="{name:'url-details',params:{url:url.id}}">
                                        <h6 class="mt-0  fw-500 user-group media-ui__title">{{ url.name }}</h6>
                                    </router-link>
                                    <span
                                        class="my-sm-0 my-2 media-badge text-uppercase color-white bg-pink">{{
                                            url.status ? 'Active' : 'Closed'
                                        }}</span>
                                </div>
                            </div>
                            <p class="mt-3 text-small"><b>Destination Url:</b> <span class="url">{{ url.old_url }}</span></p>
                            <p class="mt-3 text-small"><b>Shorten Url:</b> <span class="url">{{ url.new_url }}</span></p>

                            <div class="user-group-people mt-10 text-capitalize">
                                <p>{{ url.description }}</p>
                                <div>
                                    <div class="user-group-project">
                                        <div class="d-flex align-items-center user-group-progress-top">
                                            <div class="media-ui__start">
                                                <span class="color-light fs-12">Start Date</span>
                                                <p class="fs-14 fw-500 color-dark mb-0">
                                                    {{ url.created_at | formatDateIntoNormalFormat }}</p>
                                            </div>
                                            <div class="media-ui__end" v-if="url.expirable">
                                                <span class="color-light fs-12">end date</span>
                                                <p class="fs-16 fw-500 color-success mb-0">
                                                    {{ url.expire_at | formatDateIntoNormalFormat }}</p>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="user-group-progress-bar" v-if="url.enable_goal">

                                    <div class="progress-wrap d-flex align-items-center mb-0">
                                        <div class="progress">
                                            <div class="progress-bar bg-pink" role="progressbar"
                                                 :style="`width: ${url.goal_percentage}%;`"
                                                 aria-valuenow="83"
                                                 aria-valuemin="0"
                                                 aria-valuemax="100"></div>
                                        </div>


                                        <span class="progress-percentage">{{ url.goal_percentage }}%</span>


                                    </div>

                                    <p class="color-light fs-12 mb-20">Clicks: {{ url.clicks }} - Limit: {{
                                        url.goal
                                        }}</p>
                                </div>
                            </div>


                        </div>
                        <div class="mt-20 px-30">
                            <p class="fs-13 color-light mb-10">Assigned for Team Name</p>
                            <ul class="d-flex flex-wrap user-group-people__parent">
                                <li>
                                    <a href="#"><img class="rounded-circle wh-34 bg-opacity-secondary"
                                                     src="/img/tm1.png" alt="author"></a>
                                </li>
                                <li>
                                    <a href="#"><img class="rounded-circle wh-34 bg-opacity-secondary"
                                                     src="/img/tm2.png" alt="author"></a>
                                </li>
                                <li>
                                    <a href="#"><img class="rounded-circle wh-34 bg-opacity-secondary"
                                                     src="/img/tm3.png" alt="author"></a>
                                </li>
                                <li>
                                    <a href="#"><img class="rounded-circle wh-34 bg-opacity-secondary"
                                                     src="/img/tm4.png" alt="author"></a>
                                </li>
                                <li>
                                    <a href="#"><img class="rounded-circle wh-34 bg-opacity-secondary"
                                                     src="/img/tm5.png" alt="author"></a>
                                </li>
                                <li>
                                    <a href="#"><img class="rounded-circle wh-34 bg-opacity-secondary"
                                                     src="/img/tm6.png" alt="author"></a>
                                </li>
                                <li>
                                    <a href="#"><img class="rounded-circle wh-34 bg-opacity-secondary"
                                                     src="/img/tm1.png" alt="author"></a>
                                </li>
                                <li>
                                    <a href="#"><img class="rounded-circle wh-34 bg-opacity-secondary"
                                                     src="/img/tm2.png" alt="author"></a>
                                </li>
                            </ul>
                        </div>

                    </div>

                    <!--                    <div v-if="url.enable_goal" class="progress-box px-25 pb-10 bg-success radius-xl mb-25 p-3">-->

                    <!--                        <div class="d-flex justify-content-between mb-3">-->
                    <!--                            <h6 class="text-white fw-500 fs-16 text-capitalize">Goal</h6>-->

                    <!--                            <span-->
                    <!--                                class="progress-percentage text-white fw-500 fs-16 text-capitalize">{{-->
                    <!--                                    url.goal_percentage-->
                    <!--                                }}%</span>-->

                    <!--                        </div>-->
                    <!--                        <div class="progress-wrap d-flex align-items-center mb-15">-->
                    <!--                            <div class="progress progress-height">-->
                    <!--                                <div class="progress-bar bg-white" role="progressbar"-->
                    <!--                                     :style="`width: ${url.goal_percentage}%;`"-->
                    <!--                                     aria-valuenow="64" aria-valuemin="0" aria-valuemax="100"></div>-->
                    <!--                            </div>-->

                    <!--                        </div>-->

                    <!--                    </div>-->

                    <div class="card border-0 ">
                        <div class="card-header">
                            <h6>Traffic Source</h6>
                        </div>
                        <div class="card-body p-0">
                            <div class="tab-content">
                                <div class="tab-pane fade active show" id="s_revenue-today" role="tabpanel"
                                     aria-labelledby="s_revenue-today-tab">
                                    <div class="table-responsive table-revenue">
                                        <table class="table table--default">
                                            <thead>
                                            <tr>
                                                <th>Source</th>
                                                <th>Visitors</th>
                                                <th>Page View</th>

                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td>Direct</td>
                                                <td>3,256</td>

                                                <td>
                                                    <div class="d-flex justify-content-end">
                                                        <canvas id="lineChartSm1" height="30" width="120"
                                                                style="display: block;"></canvas>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Facebook</td>
                                                <td>3,256</td>

                                                <td>
                                                    <div class="d-flex justify-content-end">
                                                        <canvas id="lineChartSm1" height="30" width="120"
                                                                style="display: block;"></canvas>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Instagram</td>
                                                <td>3,256</td>

                                                <td>
                                                    <div class="d-flex justify-content-end">
                                                        <canvas id="lineChartSm1" height="30" width="120"
                                                                style="display: block;"></canvas>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Twitter</td>
                                                <td>3,256</td>

                                                <td>
                                                    <div class="d-flex justify-content-end">
                                                        <canvas id="lineChartSm1" height="30" width="120"
                                                                style="display: block;"></canvas>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Other Platforms</td>
                                                <td>3,256</td>

                                                <td>
                                                    <div class="d-flex justify-content-end">
                                                        <canvas id="lineChartSm1" height="30" width="120"
                                                                style="display: block;"></canvas>
                                                    </div>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="s_revenue-week" role="tabpanel"
                                     aria-labelledby="s_revenue-week-tab">
                                    <div class="table-responsive table-revenue">
                                        <table class="table table--default">
                                            <thead>
                                            <tr>
                                                <th>Name of Source</th>
                                                <th>Visitors</th>
                                                <th>Page View</th>
                                                <th>Revenue</th>
                                                <th>Trend</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td>Direct</td>
                                                <td>3,256</td>
                                                <td>12,156</td>
                                                <td>$2,225</td>
                                                <td>
                                                    <div class="d-flex justify-content-end">
                                                        <canvas id="lineChartSm1" height="30" width="120"
                                                                style="display: block;"></canvas>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Email</td>
                                                <td>4,658</td>
                                                <td>21,584</td>
                                                <td>$9,753</td>
                                                <td>
                                                    <div class="d-flex justify-content-end">
                                                        <canvas id="lineChartSm2" height="30" width="120"
                                                                style="display: block;"></canvas>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Organic Search</td>
                                                <td>1,698</td>
                                                <td>7,956%</td>
                                                <td>1,159</td>
                                                <td>
                                                    <div class="d-flex justify-content-end">
                                                        <canvas id="lineChartSm3" height="30" width="120"
                                                                style="display: block;"></canvas>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Referral</td>
                                                <td>2,856</td>
                                                <td>8,256</td>
                                                <td>1,456</td>
                                                <td>
                                                    <div class="d-flex justify-content-end">
                                                        <canvas id="lineChartSm4" height="30" width="120"
                                                                style="display: block;"></canvas>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Social Media</td>
                                                <td>9,456</td>
                                                <td>36,478</td>
                                                <td>13,852</td>
                                                <td>
                                                    <div class="d-flex justify-content-end">
                                                        <canvas id="lineChartSm5" height="30" width="120"
                                                                style="display: block;"></canvas>
                                                    </div>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="s_revenue-month" role="tabpanel"
                                     aria-labelledby="s_revenue-month-tab">
                                    <div class="table-responsive table-revenue">
                                        <table class="table table--default">
                                            <thead>
                                            <tr>
                                                <th>Name of Source</th>
                                                <th>Visitors</th>
                                                <th>Page View</th>
                                                <th>Revenue</th>
                                                <th>Trend</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td>Direct</td>
                                                <td>3,256</td>
                                                <td>12,156</td>
                                                <td>$2,225</td>
                                                <td>
                                                    <div class="d-flex justify-content-end">
                                                        <canvas id="lineChartSm1" height="30" width="120"
                                                                style="display: block;"></canvas>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Email</td>
                                                <td>4,658</td>
                                                <td>21,584</td>
                                                <td>$9,753</td>
                                                <td>
                                                    <div class="d-flex justify-content-end">
                                                        <canvas id="lineChartSm2" height="30" width="120"
                                                                style="display: block;"></canvas>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Organic Search</td>
                                                <td>1,698</td>
                                                <td>7,956%</td>
                                                <td>1,159</td>
                                                <td>
                                                    <div class="d-flex justify-content-end">
                                                        <canvas id="lineChartSm3" height="30" width="120"
                                                                style="display: block;"></canvas>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Referral</td>
                                                <td>2,856</td>
                                                <td>8,256</td>
                                                <td>1,456</td>
                                                <td>
                                                    <div class="d-flex justify-content-end">
                                                        <canvas id="lineChartSm4" height="30" width="120"
                                                                style="display: block;"></canvas>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Social Media</td>
                                                <td>9,456</td>
                                                <td>36,478</td>
                                                <td>13,852</td>
                                                <td>
                                                    <div class="d-flex justify-content-end">
                                                        <canvas id="lineChartSm5" height="30" width="120"
                                                                style="display: block;"></canvas>
                                                    </div>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="s_revenue-year" role="tabpanel"
                                     aria-labelledby="s_revenue-year-tab">
                                    <div class="table-responsive table-revenue">
                                        <table class="table table--default">
                                            <thead>
                                            <tr>
                                                <th>Name of Source</th>
                                                <th>Visitors</th>
                                                <th>Page View</th>
                                                <th>Revenue</th>
                                                <th>Trend</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td>Direct</td>
                                                <td>3,256</td>
                                                <td>12,156</td>
                                                <td>$2,225</td>
                                                <td>
                                                    <div class="d-flex justify-content-end">
                                                        <canvas id="lineChartSm1" height="30" width="120"
                                                                style="display: block;"></canvas>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Email</td>
                                                <td>4,658</td>
                                                <td>21,584</td>
                                                <td>$9,753</td>
                                                <td>
                                                    <div class="d-flex justify-content-end">
                                                        <canvas id="lineChartSm2" height="30" width="120"
                                                                style="display: block;"></canvas>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Organic Search</td>
                                                <td>1,698</td>
                                                <td>7,956%</td>
                                                <td>1,159</td>
                                                <td>
                                                    <div class="d-flex justify-content-end">
                                                        <canvas id="lineChartSm3" height="30" width="120"
                                                                style="display: block;"></canvas>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Referral</td>
                                                <td>2,856</td>
                                                <td>8,256</td>
                                                <td>1,456</td>
                                                <td>
                                                    <div class="d-flex justify-content-end">
                                                        <canvas id="lineChartSm4" height="30" width="120"
                                                                style="display: block;"></canvas>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Social Media</td>
                                                <td>9,456</td>
                                                <td>36,478</td>
                                                <td>13,852</td>
                                                <td>
                                                    <div class="d-flex justify-content-end">
                                                        <canvas id="lineChartSm5" height="30" width="120"
                                                                style="display: block;"></canvas>
                                                    </div>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ends: .card -->
                </div>
                <div class="col-xl-9 col-lg-9 mb-25">
                    <ClicksChart :url="url"></ClicksChart>
                </div>
            </div>
        </div>
        <!-- ends: project tab -->
    </div>

</template>

<script>
import UrlCLicksTable from "../Campaign/Parts/UrlCLicksTable";
import ClicksChart from "../Charts/ClicksChart";

export default {
    name: "UrlDetails",
    components: {UrlCLicksTable, ClicksChart},
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
        }.bind(this), 1000);

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

span.url {
    color: #41366d;
}
</style>
