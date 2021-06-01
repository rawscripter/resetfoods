<template>
    <div class="container-fluid">
        <div class="card mt-3 mb-3">
            <div class="card-header">
                <button class="btn btn-sm btn-info" v-on:click="exportHtml">Export HTML</button>
                <button class="btn btn-sm btn-info" v-on:click="saveDesign">Save Design</button>
            </div>
            <div class="card-body">
                <EmailEditor minHeight="800px" ref="emailEditor" v-on:load="editorLoaded"/>

            </div>
        </div>

    </div>

</template>

<script>
import {EmailEditor} from 'vue-email-editor'

export default {
    name: "Editor",
    components: {
        EmailEditor
    },
    data(){
        return{

        }
    },
    methods: {
        editorLoaded() {
            // Pass your template JSON here
            // this.$refs.emailEditor.editor.loadDesign({});
        },
        saveDesign() {
            this.$refs.emailEditor.editor.saveDesign(
                (design) => {
                    console.log('saveDesign', design);
                }
            )
        },
        exportHtml() {
            this.$refs.emailEditor.editor.exportHtml(
                (data) => {
                    console.log('exportHtml', data);
                }
            )
        }
    }
}
</script>

<style>
div#editor-1 {
    position: relative;
}

div#editor-1 iframe {
    position: absolute !important;
    min-width: 100% !important;
    min-height: 100% !important;
}
</style>
