void leaf() {
  __asm__("rorxq $0x0, -4(%rbp), %rbx");
  }

void main() {
  leaf();
}