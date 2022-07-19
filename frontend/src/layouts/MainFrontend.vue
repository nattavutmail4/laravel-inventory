<template>
    <NavbarView/>
    <main>
        <router-view />
    </main>
    <FooterView/>
</template>
<script>
    import NavbarView from "@/components/frontend/NavbarView.vue"
    import FooterView from "@/components/frontend/FooterView.vue"
    export default{
        name:"MainFrontend",
        components:{
            NavbarView,
            FooterView
        }
    }
</script>