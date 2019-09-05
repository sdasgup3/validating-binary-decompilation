void leaf() {
  __asm__("shrxq %rdx, -4(%rbp), %rbx");
  }

void main() {
  leaf();
}