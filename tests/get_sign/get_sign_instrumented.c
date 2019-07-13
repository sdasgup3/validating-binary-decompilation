int get_sign(int x) {
  if(x < 1) return 1;
  else return 0;
  
}

//void init_var_correspondence() {
//  __asm__ ( "movq $10, %rax\n\t"
//      "movq $20, %rbx\n\t"
//      "movq $30, %rcx\n\t"
//      "movq $40, %rdx\n\t"
//      "movq $50, %rsi\n\t"
//      "movq $60, %rdi\n\t"
//      "movq %rsp, %rax\n\t"
//      "movq %rbp, %rbx\n\t");
//  return;
//}

//void init_var_correspondence_rsp() {
//  __asm__ ( "movq %rsp, %rax\n\t"
//            "movq %rbp, %rax\n\t");
//  return;
//}

void init_var_correspondence() {
  __asm__ (
      "pushq %rax\n\t"
      "movq $10, %rax\n\t"
      "popq %rax\n\t"

      "pushq %rbx\n\t"
      "movq $20, %rbx\n\t"
      "popq %rbx\n\t"

      "pushq %rcx\n\t"
      "movq $30, %rcx\n\t"
      "popq %rcx\n\t"
      "pushq %rdx\n\t"
      "movq $40, %rdx\n\t"
      "popq %rdx\n\t"
      "pushq %rsi\n\t"
      "movq $50, %rsi\n\t"
      "popq %rsi\n\t"
      "pushq %rdi\n\t"
      "movl $90, %edi\n\t"
      "movq $60, %rdi\n\t"
      "popq %rdi\n\t"
      "pushq %rsp\n\t"
      "movq $70, %rsp\n\t"
      "popq %rsp\n\t"
      "pushq %rbp\n\t"
      "movq $80, %rbp\n\t"
      "popq %rbp\n\t");
  return;
}


int main() {
  init_var_correspondence();
// init_var_correspondence_rsp();
  return get_sign(10);
}
