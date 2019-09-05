void leaf() {
  __asm__("xaddq %rcx, %rbx");
  }

void main() {
  leaf();
}