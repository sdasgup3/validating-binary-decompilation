void leaf() {
  __asm__("movslq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}