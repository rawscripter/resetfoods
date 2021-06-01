<template>

    <div class="card card-stretch">
        <div class="card-header d-flex justify-content-lg-between  align-items-center">
            <div
                class="project-search project-search--height global-shadow mb-lg-0 mb-20  ml-5 rounded">
                <form action="/" class="d-flex align-items-center user-member__form">
                    <span data-feather="search"></span>
                    <input v-model="keyword" class="form-control mr-sm-2 border-0 box-shadow-none" type="search"
                           placeholder="Search" aria-label="Search">
                </form>
            </div>

        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table mb-0 table-borderless">
                    <thead>
                    <tr class="userDatatable-header">
                        <th>
                            <span class="userDatatable-title">ID</span>
                        </th>
                        <th>
                            <span class="userDatatable-title">User IP</span>
                        </th>
                        <th>
                            <span class="userDatatable-title"> Country</span>
                        </th>
                        <th>
                            <span class="userDatatable-title">Device</span>
                        </th>
                        <th>
                            <span class="userDatatable-title">OS</span>
                        </th>
                        <th>
                            <span class="userDatatable-title">Browser</span>
                        </th>
                        <th>
                            <span class="userDatatable-title">Source</span>
                        </th>

                        <th width="250px">
                            <span class="userDatatable-title">Date</span>
                        </th>
                        <th width="120px"></th>

                    </tr>
                    </thead>
                    <tbody>
                    <tr v-for="(click,clickIndex) in clicks">
                        <td>
                            <div class="userDatatable-content">
                                {{ clickIndex + 1 }}
                            </div>
                        </td>
                        <td>
                            <div class="d-flex">
                                <div class="userDatatable-inline-title">
                                    <a href="#" class="text-dark fw-500">
                                        <h6>{{ click.user_ip }}</h6>
                                    </a>
                                    <p class="d-block mb-0">
                                        {{ click.city }} {{ click.state }}
                                    </p>
                                </div>
                            </div>
                        </td>

                        <td>
                            <div class="userDatatable-content">
                                {{ click.country == null || click.country == '' ? 'Unknown' : click.country }}
                            </div>
                        </td>
                        <td>
                            <div class="userDatatable-content">
                                {{ click.device == null ? 'Unknown' : click.device }}
                            </div>
                        </td>
                        <td>
                            <div class="userDatatable-content">
                                {{ click.os == null ? 'Unknown' : click.os }}
                            </div>
                        </td>
                        <td>
                            <div class="userDatatable-content">
                                {{ click.browser == null ? 'Unknown' : click.browser }}
                            </div>
                        </td>
                        <td>
                            <div class="userDatatable-content">
                                Direct
                            </div>
                        </td>
                        <td>
                            <div class="userDatatable-content">
                                {{ click.created_at |formatDateIntoAdvanceFormat }}
                            </div>
                        </td>

                        <td>
                            <ul class="orderDatatable_actions mb-0 d-flex flex-wrap">
                                <li>
                                    <a href="#" class="edit">
                                        <span data-feather="edit"></span></a>
                                </li>
                                <li>
                                    <a href="#" class="remove">
                                        <span data-feather="trash-2"></span></a>
                                </li>
                            </ul>
                        </td>
                    </tr>
                    </tbody>
                </table>

                <div class="d-flex justify-content-between mt-2 mx-99">
                    <div>
                        <li class="atbd-pagination__item">
                            <div class="paging-option">
                                <select v-model="perPage" name="page-number" class="page-selection">
                                    <option value="5">5/page</option>
                                    <option value="10">10/page</option>
                                    <option value="20">20/page</option>
                                    <option value="40">40/page</option>
                                    <option value="60">60/page</option>
                                    <option value="100">100/page</option>
                                </select>
                            </div>
                        </li>
                    </div>
                    <pagination :pagination="paginationLists"
                                @paginate="getUrlClicks()"
                                :offset="6">
                    </pagination>

                </div>
            </div>
        </div>
    </div>
</template>

<script>
import Pagination from "../../Helpers/Pagination";

export default {
    name: "UrlCLicksTable",
    components: {
        Pagination
    },
    watch: {
        'keyword': {
            immediate: true,
            handler(newVal) {
                this.getUrlClicks();
            }
        }, 'perPage': {
            immediate: true,
            handler(newVal) {
                this.getUrlClicks();
            }
        },
    },
    props: ['url'],
    data() {
        return {
            clicks: [],
            paginationLists: {
                data: [],
                total: 0,
                per_page: 2,
                from: 1,
                to: 0,
                current_page: 1
            },
            urlStatus: 'all',
            offset: 5,
            perPage: 10,
            keyword: '',
        }
    },
    mounted() {
        this.getUrlClicks();
    },
    methods: {
        getUrlClicks() {
            axios.get(`/url/${this.url.id}/clicks/json-data?keyword=${this.keyword}&page=${this.paginationLists.current_page}&perPage=${this.perPage}`)
                .then(response => {

                    this.paginationLists = response.data;
                    this.clicks = response.data.data;
                    console.log(response.data.data)
                    loadSvgIcons();
                })
                .catch(err => {
                    console.error(err)
                })
        }
    }
}
</script>

<style scoped>
.projects-tab-content .nav-item .nav-link {
    padding: 0 15px;
}

.user-member__form, .user-member__form input {
    background-color: #f3f4f6 !important;
}

.mx-99 {
    max-width: 98%;
}
</style>
