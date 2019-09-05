void leaf() {
  __asm__("movq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}