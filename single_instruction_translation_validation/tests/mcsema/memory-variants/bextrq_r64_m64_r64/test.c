void leaf() {
  __asm__("bextrq %rdx, -4(%rbp), %rbx");
  }

void main() {
  leaf();
}