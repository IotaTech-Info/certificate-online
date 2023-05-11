export const urlParameterMixin = {
    data() {
        return {
            organizationId: null,
        }
    },
    methods: {
        organizationIdCheck(){
            if (!sessionStorage.hasOwnProperty('organizationId')) {
                this.$router.push({
                    name: 'SignIn'
                })
            }
        }
    }
}