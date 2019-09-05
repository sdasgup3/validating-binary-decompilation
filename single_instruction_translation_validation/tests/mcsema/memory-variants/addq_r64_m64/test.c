void leaf() {
  __asm__("addq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}