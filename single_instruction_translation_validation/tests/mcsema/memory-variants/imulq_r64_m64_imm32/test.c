void leaf() {
  __asm__("imulq $0x0, -4(%rbp), %rbx");
  }

void main() {
  leaf();
}