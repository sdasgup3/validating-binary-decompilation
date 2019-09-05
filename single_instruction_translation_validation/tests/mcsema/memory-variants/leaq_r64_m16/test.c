void leaf() {
  __asm__("leaq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}