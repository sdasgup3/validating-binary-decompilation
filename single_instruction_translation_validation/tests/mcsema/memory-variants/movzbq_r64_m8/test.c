void leaf() {
  __asm__("movzbq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}