<template>
  <div>
    <el-container>
      <el-main>
        <h1>admin home</h1>
        <el-card style="width: 40%">
          <p><i class="el-icon-s-home" style="margin-right: 18px"></i>项目名：学生选课管理系统</p>
          <p><i class="el-icon-s-custom" style="margin-right: 18px"></i>开发人员：@一枚程序员website：http://www.shuaihu.vip</p>
          <p><i class="el-icon-location-outline" style="margin-right: 18px"></i>安徽六安</p>
          <p><i class="el-icon-chat-round" style="margin-right: 18px"></i>QQ: 1583139786</p>
          <p><i class="el-icon-error" style="margin-right: 18px;"></i>仅供学习，禁止抄袭</p>
        </el-card>
        <logout></logout>
      </el-main>
    </el-container>
  </div>
</template>

<script>
import Logout from "@/components/logout";
export default {
  name: "home",
  components: {Logout},
}
</script>

<style scoped>

</style>