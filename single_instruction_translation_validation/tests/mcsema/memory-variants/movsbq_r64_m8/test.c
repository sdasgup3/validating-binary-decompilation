void leaf() {
  __asm__("movsbq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}