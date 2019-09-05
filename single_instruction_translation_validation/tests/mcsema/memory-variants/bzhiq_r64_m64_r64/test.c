void leaf() {
  __asm__("bzhiq %rdx, -4(%rbp), %rbx");
  }

void main() {
  leaf();
}