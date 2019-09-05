void leaf() {
  __asm__("xchgq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}