<script>
import { useRouter } from "vue-router";
export default {
  props: ["survey"],
  setup() {
    const router = useRouter();

    return {
      router,
    };
  },
  methods: {
    redirect() {
      this.router.push({ path: "/surveys" });
    },
    redirectStudentReports() {
      this.router.push({ path: "/student-subjects"})
    },
    redirectImport() {
      this.router.push({ path: "/import" })
    },
    redirectAdminReport() {
      this.router.push({ path: '/admin_report' })
    }
  },
};
</script>
<template>
  <div class="row">
    <q-card
      class="rounded-border q-pa-xl hsize justify-center col-12 text-center"
    >
      <div>
        <q-avatar size="100px">
          <img src="https://cdn.quasar.dev/img/avatar.png" />
        </q-avatar>
      </div>
      <q-space></q-space>
      <br />
      <q-separator></q-separator>
      <br />
      <div class="text-h5">Usuário</div>
      <br />
      <q-btn color="secondary" @click="redirect">
        Vá para os seus questionários
      </q-btn>
      <q-btn color="secondary" @click="redirectStudentReports">
        Vá para os resultados das avaliações dos alunos
      </q-btn>
      <q-btn color="secondary" @click="redirectImport">
        Vá para a página de importação de dados do SIGAA
      </q-btn>
      <q-btn color="secondary" @click="redirectAdminReport">
        Vá para a página de Dados de Admin
      </q-btn>
    </q-card>
  </div>
</template>

<style scoped>
.hsize {
  height: 500px;
}
.rounded-border {
  border-radius: 25px;
}
</style>
