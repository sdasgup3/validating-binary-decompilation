void leaf() {
  __asm__("bzhiq %rdx, %rcx, %rbx");
  }

void main() {
  leaf();
}