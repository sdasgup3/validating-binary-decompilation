void leaf() {
  __asm__("imulq %rcx, %rbx");
  }

void main() {
  leaf();
}