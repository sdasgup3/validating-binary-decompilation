void leaf() {
  __asm__("imulq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}