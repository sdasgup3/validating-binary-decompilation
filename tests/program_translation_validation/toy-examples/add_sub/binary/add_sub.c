int add_sub(int c, int b) {
  int a = c+b;
  int d = c-b;
  return a+d;
}

void init_var_correspondence() {
  __asm__ (
      "movq $10, %rax\n\t"
      "movq $20, %rbx\n\t"
      "movq $30, %rcx\n\t"
      "movq $40, %rdx\n\t"
      "movq $50, %rsi\n\t"
      "movl $90, %edi\n\t"
      "movq $60, %rdi\n\t");
//      "movq $70, %rsp\n\t"
//      "movq $80, %rbp\n\t");
  return;
}


int main() {

   __asm__ (
      "pushq %rax\n\t"
      "pushq %rbx\n\t"
      "pushq %rcx\n\t"
      "pushq %rdx\n\t"
      "pushq %rsi\n\t"
      "pushq %rdi\n\t");
//      "pushq %rsp\n\t"
//      "pushq %rbp\n\t");

  init_var_correspondence();
   __asm__ (
      "popq %rax\n\t"
      "popq %rbx\n\t"
      "popq %rcx\n\t"
      "popq %rdx\n\t"
      "popq %rsi\n\t"
      "popq %rdi\n\t");
//      "popq %rsp\n\t"
//      "popq %rbp\n\t");
// init_var_correspondence_rsp();

  return add_sub(10, 20);
}
