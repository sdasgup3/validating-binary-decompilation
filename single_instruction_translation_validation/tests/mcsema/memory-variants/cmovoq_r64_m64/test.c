void leaf() {
  __asm__("cmovoq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}